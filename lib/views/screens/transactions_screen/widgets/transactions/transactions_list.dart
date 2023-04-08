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
  final UserRepository usersRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    var transactions = widget.user.transactions
        .where((transaction) =>
            transaction.date.day == widget.day &&
            transaction.date.month == widget.date.month &&
            transaction.date.year == widget.date.year)
        .toList();

    return transactions.isEmpty
        ? const SizedBox.shrink()
        : Container(
            height: transactions.length * 70.0 + 50,
            decoration: const BoxDecoration(
              color: colorCards,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: transactions.isEmpty
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          widget.date.day == widget.day &&
                                  widget.date.month == DateTime.now().month &&
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
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: transactions.length * 70.0,
                        child: ListView(
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            transactions.length,
                            (index) {
                              final transaction = transactions[index];
                              return TransactionListItem(
                                transaction: transaction,
                                onPressDelete: () {
                                  setState(() {
                                    context.read<UserBloc>().add(
                                          UserEvent.removeTransaction(
                                            transaction,
                                          ),
                                        );
                                  });
                                  Navigator.of(context).pop();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
          );
  }
}
