import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SummariceCard extends StatelessWidget {
  const SummariceCard.icome({
    required this.value,
    Key? key,
  })  : title = 'Income',
        color = Colors.green,
        icon = FontAwesomeIcons.arrowUp,
        super(key: key);

  const SummariceCard.expense({
    required this.value,
    Key? key,
  })  : title = 'Expense',
        color = Colors.red,
        icon = FontAwesomeIcons.arrowDown,
        super(key: key);

  final String title;
  final Color color;
  final IconData icon;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 15,
            child: FaIcon(
              icon,
              size: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$ $value',
                style: TextStyle(
                  fontSize: 15,
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
