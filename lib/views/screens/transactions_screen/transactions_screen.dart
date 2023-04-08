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
      child: SingleChildScrollView(
        child: HomeCard(
          title: 'Transactions',
          widget: Container(
            decoration: const BoxDecoration(
              color: colorCards,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: transactions.isEmpty ? 100 : transactions.length * 115,
            child: transactions.isEmpty
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
                : ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
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
          onTap: () {},
        ),
      ),
    );
  }
}
