import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountListItem extends StatelessWidget {
  const AccountListItem({required this.account, Key? key}) : super(key: key);

  final AccountModel account;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        // backgroundImage: AssetImage(account.institution.image),
        backgroundColor: Color(account.institution.color),
        radius: 18,
        // backgroundImage: AssetImage(account.institution.image),
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
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: account.balance >= 0 ? Colors.green : Colors.red,
            ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
