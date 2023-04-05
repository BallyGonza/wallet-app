import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({
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
            AccountsBalance(
              transactions: user.transactions,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummaryCard.income(user: user),
                SummaryCard.expense(user: user),
              ],
            ),
            const SizedBox(height: 16),
            HomeCard(
              title: 'Accounts',
              widget: AccountsList(user: user),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
