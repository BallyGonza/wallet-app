import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({
    Key? key,
    required this.user,
    required this.usersRepository,
  }) : super(key: key);

  final UserModel user;
  final UserRepository usersRepository;

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
                SummaryCard.income(
                  amount: usersRepository.getIncome(user),
                ),
                SummaryCard.expense(
                  amount: usersRepository.getExpense(user),
                ),
              ],
            ),
            const SizedBox(height: 16),
            HomeCard(
              title: 'Accounts',
              onTap: () {},
              widget: AccountsList(
                user: user,
                usersRepository: usersRepository,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
