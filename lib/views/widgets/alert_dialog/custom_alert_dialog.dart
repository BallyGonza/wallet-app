import 'package:flutter/material.dart';
import 'package:wallet_app/data/constants/colors.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.content,
    required this.primaryActionTitle,
    required this.onPrimaryPressed,
    this.secondaryActionTitle,
    this.onSecondaryPressed,
    super.key,
  });

  final String title;
  final Widget content;
  final String primaryActionTitle;
  final String? secondaryActionTitle;
  final VoidCallback onPrimaryPressed;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: primaryColor,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: content,
      actions: <Widget>[
        if (secondaryActionTitle != null && onSecondaryPressed != null)
          ElevatedButton(
            onPressed: onSecondaryPressed,
            child: Text(secondaryActionTitle ?? 'Cancel'),
          ),
        ElevatedButton(
          onPressed: () {
            onPrimaryPressed();
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: Text(
            primaryActionTitle,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text('Cancel', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
