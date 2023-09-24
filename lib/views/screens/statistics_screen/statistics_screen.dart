import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/screens/statistics_screen/expenses_screen.dart';
import 'package:wallet_app/views/screens/statistics_screen/incomes_screen.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({
    required this.user,
    required this.date,
    required this.yearMode,
    super.key,
  });

  final UserModel user;
  final DateTime date;
  final bool yearMode;

  @override
  Widget build(BuildContext context) {
    final userRepository = UserRepository();
    List<TransactionModel> transactions;
    String accountsBalance;
    String incomeBalance;
    String expenseBalance;
    if (yearMode) {
      transactions = userRepository.getTransactionsByYear(user, date);
      accountsBalance =
          arg.format(userRepository.getBalanceByYear(transactions, date));
      incomeBalance =
          arg.format(userRepository.getTotalIncomeByYear(user, date));
      expenseBalance =
          arg.format(userRepository.getTotalExpenseByYear(user, date));
    } else {
      transactions = userRepository.getTransactionsByDate(user, date);
      accountsBalance =
          arg.format(userRepository.getBalance(user.accounts, date));
      incomeBalance = arg.format(userRepository.getTotalIncome(user, date));
      expenseBalance = arg.format(userRepository.getTotalExpense(user, date));
    }

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: colorCards,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              balanceItem('Income', incomeBalance, () {
                Navigator.push(
                  context,
                  MaterialPageRoute<IncomesScreen>(
                    builder: (context) => IncomesScreen(
                      user: user,
                      date: date,
                      yearMode: yearMode,
                    ),
                  ),
                );
              }),
              balanceItem('Expense', expenseBalance, () {
                Navigator.push(
                  context,
                  MaterialPageRoute<ExpensesScreen>(
                    builder: (context) => ExpensesScreen(
                      user: user,
                      date: date,
                      yearMode: yearMode,
                    ),
                  ),
                );
              }),
              balanceItem('Balance', accountsBalance, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Card balanceItem(String title, String amount, void Function() onTap) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            color: title == 'Income'
                ? incomeColor
                : title == 'Expense'
                    ? expenseColor
                    : Colors.white,
            fontSize: 20,
          ),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            color: title == 'Income'
                ? incomeColor
                : title == 'Expense'
                    ? expenseColor
                    : Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
