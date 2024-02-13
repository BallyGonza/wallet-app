import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountListItem extends StatelessWidget {
  const AccountListItem({
    required this.account,
    super.key,
  });

  final AccountModel account;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(account.institution.backgroundColor),
          radius: 18,
          child: Image(
            image: AssetImage(
              account.institution.icon,
            ),
            height: 25,
            width: 25,
          ),
        ),
        title: Text(
          account.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        subtitle: account.description != null
            ? Text(
                account.description!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              )
            : null,
      ),
    );
  }
}
