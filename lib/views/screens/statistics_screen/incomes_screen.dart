import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/screens/statistics_screen/widgets/widgets.dart';

import 'package:wallet_app/views/views.dart';

class IncomesScreen extends StatefulWidget {
  const IncomesScreen({
    required this.user,
    required this.date,
    super.key,
  });

  final UserModel user;
  final DateTime date;

  @override
  State<IncomesScreen> createState() => _IncomesScreenState();
}

class _IncomesScreenState extends State<IncomesScreen> {
  late UserRepository userRepository;
  late List<CategoryModel> categories;
  late double total;

  @override
  void initState() {
    userRepository = context.read<UserRepository>();
    total = userRepository.getTotalIncome(widget.user, widget.date);
    categories = widget.user.incomeCategories;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incomes'),
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
          trailing: Number(
            number: total,
            size: 18,
            color: Colors.grey,
            bold: true,
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
                return IncomeItem(
                  user: widget.user,
                  income: categories[index],
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
