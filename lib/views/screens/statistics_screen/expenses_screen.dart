import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/screens/statistics_screen/widgets/expenses_item.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({
    required this.user,
    required this.date,
    required this.yearMode,
    super.key,
  });

  final UserModel user;
  final DateTime date;
  final bool yearMode;

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  late UserRepository userRepository;
  late List<CategoryModel> categories;
  late double total;

  @override
  void initState() {
    userRepository = context.read<UserRepository>();
    categories = widget.user.expenseCategories;
    total = userRepository.getTotalExpense(widget.user, widget.date);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListTile(
          title: const Text(
            'Total',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          trailing: Text(
            arg.format(total),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.grey,
            ),
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
                  user: widget.user,
                  expense: categories[index],
                  date: widget.date,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
