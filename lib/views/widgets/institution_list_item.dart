import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class InstitutionListItem extends StatefulWidget {
  const InstitutionListItem({required this.institution, Key? key})
      : super(key: key);

  final InstitutionModel institution;

  @override
  State<InstitutionListItem> createState() => _InstitutionListItemState();
}

class _InstitutionListItemState extends State<InstitutionListItem> {
  UserRepository userRepository = UserRepository();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(widget.institution.backgroundColor),
          radius: 18,
          child: Image(
            image: AssetImage(widget.institution.logo),
            height: 25,
            width: 25,
          ),
        ),
        title: Text(
          widget.institution.name,
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
