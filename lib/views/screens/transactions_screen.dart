import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeCard(
              title: 'Transactions',
              widget: TransactionsList(user: user),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
