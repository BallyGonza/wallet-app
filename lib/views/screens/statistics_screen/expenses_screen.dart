import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'widgets/expenses_item.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen(
      {required this.user,
      required this.date,
      required this.yearMode,
      super.key});

  final UserModel user;
  final DateTime date;
  final bool yearMode;
  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = UserRepository();
    final categories = user.expenseCategories;
    double total;
    if (yearMode) {
      total = userRepository.getTotalExpenseByYear(user, date);
    } else {
      total = userRepository.getTotalExpense(user, date);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: const BoxDecoration(
          color: colorCards,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListTile(
          title: const Text('Total',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey)),
          trailing: Text(
            amountFormat.format(total),
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                      height: 0.1,
                      color: Colors.grey,
                    ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return ExpenseItem(
                    user: user,
                    expense: categories[index],
                    date: date,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
