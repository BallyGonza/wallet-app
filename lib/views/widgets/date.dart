import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class Date extends StatelessWidget {
  const Date({
    required this.date,
    this.bold = false,
    this.size = 12,
    this.color = Colors.grey,
    super.key,
  });

  final DateTime date;
  final bool bold;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      dateFormat.format(date),
      style: TextStyle(
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontSize: size,
        color: color,
      ),
    );
  }
}
