import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.description,
    required this.transaction,
    super.key,
    this.iconColor,
    this.descriptionColor,
    this.onTap,
  });

  final String title;
  final String icon;
  final int? iconColor;
  final int backgroundColor;
  final String description;
  final TransactionModel transaction;
  final Color? descriptionColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      color: Colors.grey[600],
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    final descriptionStyle = TextStyle(
      color: descriptionColor ?? Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );

    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(backgroundColor),
          child: Image(
            image: AssetImage(icon),
            height: 25,
            width: 25,
            color: iconColor != null ? Color(iconColor!) : null,
          ),
        ),
        title: Text(title, style: titleStyle),
        trailing: Text(description, style: descriptionStyle),
      ),
    );
  }
}
