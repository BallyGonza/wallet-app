import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/data.dart';

class SummaryCard extends StatelessWidget {
  SummaryCard.income({
    required this.user,
    required this.date,
    Key? key,
  })  : title = 'Incomes',
        color = Colors.green,
        icon = FontAwesomeIcons.arrowUp,
        amount = UserRepository().getIncome(user, date),
        super(key: key);

  SummaryCard.expense({
    required this.user,
    required this.date,
    Key? key,
  })  : title = 'Expenses',
        color = Colors.red,
        icon = FontAwesomeIcons.arrowDown,
        amount = UserRepository().getExpense(user, date),
        super(key: key);

  final String title;
  final Color color;
  final IconData icon;
  final UserModel user;
  final double amount;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: FaIcon(
              icon,
              size: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                amountFormat.format(amount),
                style: TextStyle(
                  fontSize: 16,
                  color: color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
