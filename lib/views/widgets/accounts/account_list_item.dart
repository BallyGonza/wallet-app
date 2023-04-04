import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountListItem extends StatefulWidget {
  const AccountListItem({required this.account, Key? key}) : super(key: key);

  final AccountModel account;

  @override
  State<AccountListItem> createState() => _AccountListItemState();
}

class _AccountListItemState extends State<AccountListItem> {
  double _balance = 0;

  @override
  void initState() {
    // for (final transaction in widget.user.transactions) {
    //   _balance += transaction.amount;
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        // backgroundImage: AssetImage(account.institution.image),
        backgroundColor: Color(widget.account.institution.color),
        radius: 18,
        // backgroundImage: AssetImage(account.institution.image),
        child: Image.asset(
          widget.account.institution.image,
          width: 24,
        ),
      ),
      title: Text(
        widget.account.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        '\$ ${amountFormat.format(_balance)}',
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: _balance >= 0 ? Colors.green : Colors.red,
            ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
