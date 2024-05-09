import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  const Number({
    required this.number,
    required this.size,
    this.color,
    super.key,
  });

  final double number;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      mainAxisAlignment: MainAxisAlignment.start,
      value: number,
      prefix: r'$',
      duration: const Duration(seconds: 5),
      decimalSeparator: ',',
      thousandSeparator: '.',
      textStyle: TextStyle(
        color: color ??
            (number > 0
                ? Colors.green
                : number < 0
                    ? Colors.red
                    : Colors.grey),
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
