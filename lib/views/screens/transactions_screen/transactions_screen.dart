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
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeCard(
              title: 'Transactions',
              widget: Column(
                children: [
                  TransactionsList(
                    user: user,
                    date: date,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
