import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({
    Key? key,
    required this.user,
    required this.date,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AccountsBalance(
          transactions: widget.user.transactions,
          date: widget.date,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SummaryCard.income(user: widget.user, date: widget.date),
            SummaryCard.expense(user: widget.user, date: widget.date),
          ],
        ),
        const SizedBox(height: 16),
        HomeCard(
          title: 'Accounts',
          widget: AccountsList(user: widget.user, date: widget.date),
          onTap: () {},
        ),
      ],
    );
  }
}
