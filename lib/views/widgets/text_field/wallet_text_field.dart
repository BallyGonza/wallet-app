import 'package:flutter/material.dart';

class WalletDialogTextField extends StatelessWidget {
  const WalletDialogTextField({
    required this.hint,
    required this.controller,
    super.key,
  });

  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
