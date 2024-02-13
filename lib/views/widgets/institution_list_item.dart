import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';

class InstitutionListItem extends StatelessWidget {
  const InstitutionListItem({
    required this.institution,
    super.key,
  });

  final InstitutionModel institution;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(institution.backgroundColor),
          radius: 18,
          child: Image(
            image: AssetImage(institution.icon),
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
