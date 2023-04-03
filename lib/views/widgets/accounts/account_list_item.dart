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
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(account.institution.color),
        child: Image.asset(
          account.institution.image,
          width: 24,
        ),
      ),
      title: Text(
        account.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        '\$ ${amountFormat.format(account.balance)}',
        style: TextStyle(
          color: account.balance >= 0 ? Colors.green : Colors.red,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
