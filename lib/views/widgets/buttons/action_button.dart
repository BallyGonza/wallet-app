import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.text,
    required this.onPressed,
    required this.color,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
