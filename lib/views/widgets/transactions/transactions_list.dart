import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'transaction_list_item.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({
    Key? key,
    required this.user,
    required this.date,
    required this.day,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;
  final int day;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  final UserRepository userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loaded: (transactions) {
            final filteredTransactions = userRepository.filterTransactionsByDay(
                transactions, widget.date, widget.day);
            return transactions.isEmpty
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              widget.date.day == widget.day &&
                                      widget.date.month ==
                                          DateTime.now().month &&
                                      widget.date.year == DateTime.now().year
                                  ? 'Hoy'
                                  : DateFormat('EEEE dd')
                                      .format(DateTime(widget.date.year,
                                          widget.date.month, widget.day))
                                      .toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              amountFormat.format(
                                userRepository.getTotalIncomeByDay(
                                    widget.user, widget.date, widget.day),
                              ),
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              amountFormat.format(
                                userRepository.getTotalExpenseByDay(
                                    widget.user, widget.date, widget.day),
                              ),
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: filteredTransactions.length * 71.0,
                        child: ListView(
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            filteredTransactions.length,
                            (index) {
                              final transaction = filteredTransactions[index];
                              return TransactionListItem(
                                user: widget.user,
                                transaction: transaction,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
          },
        );
      },
    );
  }
}
