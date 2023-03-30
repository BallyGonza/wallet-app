import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.users, super.key});

  final List<UserModel> users;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Iterable<double> _income;
  late Iterable<double> _expense;

  @override
  void initState() {
    _income = widget.users.first.accounts.map((e) => e.transactions.isEmpty
        ? 0
        : e.transactions
            .where((element) => element.isIncome)
            .map((e) => e.amount)
            .reduce((value, element) => value + element));
    _expense = widget.users.first.accounts.map((e) => e.transactions.isEmpty
        ? 0
        : e.transactions
            .where((element) => !element.isIncome)
            .map((e) => e.amount)
            .reduce((value, element) => value + element));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: walletAppTheme.scaffoldBackgroundColor,
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const AddFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            AccountsBalance(
              value: widget.users.first.accounts
                  .map((e) => e.balance)
                  .reduce((value, element) => value + element),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummariceCard.icome(
                  value: _income.reduce((value, element) => value + element),
                ),
                SummariceCard.expense(
                    value:
                        _expense.reduce((value, element) => value + element)),
              ],
            ),
            const SizedBox(height: 16),
            AccountsList(
              accounts: widget.users.first.accounts,
            ),
          ],
        ),
      ),
    );
  }
}
