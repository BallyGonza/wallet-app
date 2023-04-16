import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'expenses_screen.dart';
import 'incomes_screen.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen(
      {Key? key,
      required this.user,
      required this.date,
      required this.yearMode})
      : super(key: key);

  final UserModel user;
  final DateTime date;
  final bool yearMode;

  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = UserRepository();
    List<TransactionModel> transactions;
    String accountsBalance;
    String incomeBalance;
    String expenseBalance;
    if (yearMode) {
      transactions = userRepository.getTransactionsByYear(user, date);
      accountsBalance = amountFormat
          .format(userRepository.getBalanceByYear(transactions, date));
      incomeBalance =
          amountFormat.format(userRepository.getTotalIncomeByYear(user, date));
      expenseBalance =
          amountFormat.format(userRepository.getTotalExpenseByYear(user, date));
    } else {
      transactions = userRepository.getTransactionsByDate(user, date);
      accountsBalance =
          amountFormat.format(userRepository.getBalance(user.accounts, date));
      incomeBalance =
          amountFormat.format(userRepository.getTotalIncome(user, date));
      expenseBalance =
          amountFormat.format(userRepository.getTotalExpense(user, date));
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              balanceItem('Income', incomeBalance.toString(), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IncomesScreen(
                      user: user,
                      date: date,
                      yearMode: yearMode,
                    ),
                  ),
                );
              }),
              balanceItem('Expense', expenseBalance.toString(), () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpensesScreen(
                      user: user,
                      date: date,
                      yearMode: yearMode,
                    ),
                  ),
                );
              }),
              balanceItem('Balance', accountsBalance.toString(), () {}),
            ],
          ),
        ),
      ),
    );
  }

  Card balanceItem(String title, String amount, Function() onTap) {
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
