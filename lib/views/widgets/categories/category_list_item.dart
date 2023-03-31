import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/data.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    required this.category,
    super.key,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Color(category.color),
        child: Image.asset(
          category.image,
          width: 24,
        ),
      ),
      title: Text(
        category.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const FaIcon(
        FontAwesomeIcons.chevronRight,
        color: Colors.white,
      ),
    );
  }
}
