import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key, required this.user, required this.date})
      : super(key: key);

  final UserModel user;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final transactions = user.transactions
        .where((transaction) =>
            transaction.date.month == date.month &&
            transaction.date.year == date.year)
        .toList();
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: colorCards,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: transactions.isEmpty
            ? const Center(
                child: Text('No transactions yet',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              )
            : ListView.builder(
                itemCount: 31,
                itemBuilder: (context, index) {
                  return TransactionsList(
                    user: user,
                    date: date,
                    day: 31 - index,
                  );
                },
              ),
      ),
    );
  }
}
