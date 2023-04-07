import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'transaction_list_item.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({
    Key? key,
    required this.user,
    required this.date,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  final UserRepository usersRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.user.transactions.isEmpty
          ? 100
          : widget.user.transactions
                  .where((transaction) =>
                      transaction.date.month == widget.date.month &&
                      transaction.date.year == widget.date.year)
                  .toList()
                  .length *
              73.0,
      decoration: const BoxDecoration(
        color: colorCards,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: widget.user.transactions
              .where((transaction) =>
                  transaction.date.month == widget.date.month &&
                  transaction.date.year == widget.date.year)
              .toList()
              .isEmpty
          ? const Center(
              child: Text(
                'No transactions yet',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
          : ListView(
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                widget.user.transactions
                    .where((transaction) =>
                        transaction.date.month == widget.date.month &&
                        transaction.date.year == widget.date.year)
                    .toList()
                    .length,
                (index) {
                  final transaction = widget.user.transactions
                      .where((transaction) =>
                          transaction.date.month == widget.date.month &&
                          transaction.date.year == widget.date.year)
                      .toList()[index];
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
    );
  }
}
