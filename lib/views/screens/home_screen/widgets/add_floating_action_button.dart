import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddFloatingActionButton extends StatelessWidget {
  const AddFloatingActionButton({required this.onAddPressed, super.key});

  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onAddPressed,
      backgroundColor: Colors.green[200],
      elevation: 0,
      child: const FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
