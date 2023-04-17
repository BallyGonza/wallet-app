import 'package:flutter/material.dart';
import 'package:wallet_app/data/constants/colors.dart';

class WalletAlertDialog extends StatelessWidget {
  const WalletAlertDialog(
      {required this.title,
      required this.content,
      required this.primaryActionTitle,
      required this.onPressed,
      super.key});

  final String title;
  final Widget content;
  final String primaryActionTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: appBackgroundColor,
      title: Text(title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            onPressed();
            Navigator.of(context).pop();
          },
          child: Text(primaryActionTitle,
              style: const TextStyle(color: Colors.green)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
