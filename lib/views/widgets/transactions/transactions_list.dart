import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/widgets/transactions/transaction_list_item.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({
    required this.user,
    required this.date,
    required this.day,
    super.key,
  });

  final UserModel user;
  final DateTime date;
  final int day;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  late TransactionRepository transactionRepository;

  @override
  void initState() {
    transactionRepository = context.read<TransactionRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loaded: (accounts) {
            final transactions = transactionRepository.getTransactionsByDay(
              accounts,
              widget.date,
              widget.day,
            );
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
                                  : DateFormat('EEEE dd').format(
                                      DateTime(
                                        widget.date.year,
                                        widget.date.month,
                                        widget.day,
                                      ),
                                    ),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              arg.format(
                                transactionRepository.getTotalIncomeByDay(
                                  transactions,
                                  widget.date,
                                  widget.day,
                                ),
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              arg.format(
                                transactionRepository.getTotalExpensesByDay(
                                  transactions,
                                  widget.date,
                                  widget.day,
                                ),
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: transactions.length * 71.0,
                        child: ListView(
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            transactions.length,
                            (index) {
                              final transaction = transactions[index];
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
