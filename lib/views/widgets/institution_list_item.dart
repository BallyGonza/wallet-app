import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class InstitutionListItem extends StatelessWidget {
  const InstitutionListItem({
    required this.institution,
    super.key,
    this.selected = false,
    this.color = secondaryColor,
  });

  final InstitutionModel institution;
  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: selected ? Color(institution.logoColor) : color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(institution.backgroundColor),
          radius: 18,
          child: Image.asset(
            institution.icon,
            height: 25,
            width: 25,
          ),
        ),
        title: Text(
          institution.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
