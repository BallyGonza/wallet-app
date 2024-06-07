import 'package:flutter/material.dart';
import 'package:wallet_app/data/constants/constants.dart';

class Number extends StatelessWidget {
  const Number({
    required this.number,
    required this.size,
    this.color,
    this.bold = false,
    this.isDolars = false,
    super.key,
  });

  final double number;
  final double size;
  final Color? color;
  final bool bold;
  final bool isDolars;

  @override
  Widget build(BuildContext context) {
    return Text(
      isDolars ? dolar.format(number) : arg.format(number),
      style: _buildTextStyle(),
    );
  }

  TextStyle _buildTextStyle() {
    return TextStyle(
      color: color ?? _getColorBasedOnValue(),
      fontSize: size,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    );
  }

  Color _getColorBasedOnValue() {
    if (number > 0) {
      return Colors.green;
    } else if (number < 0) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}
