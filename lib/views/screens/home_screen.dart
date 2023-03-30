import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            const AccountsBalance(
              value: 1000,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SummariceCard.icome(value: 1000),
                SummariceCard.expense(value: 500),
              ],
            ),
            const SizedBox(height: 16),
            AccountsList(
              accounts: defaultAccounts,
            ),
          ],
        ),
      ),
    );
  }
}
