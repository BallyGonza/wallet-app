import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountItem extends StatefulWidget {
  const AccountItem({
    Key? key,
    required this.account,
    required this.date,
    required this.user,
  }) : super(key: key);

  final AccountModel account;
  final UserModel user;
  final DateTime date;

  @override
  State<AccountItem> createState() => _AccountItemState();
}

class _AccountItemState extends State<AccountItem> {
  @override
  Widget build(BuildContext context) {
    final AccountRepository accountRepository = AccountRepository();

    return InkWell(
      onTap: () {
        setState(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AccountScreen(
                user: widget.user,
                account: widget.account,
                date: widget.date,
              ),
            ),
          );
        });
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(widget.account.institution.backgroundColor),
          radius: 18,
          child: Image(
            image: AssetImage(
              widget.account.institution.logo,
            ),
            height: 25,
            width: 25,
          ),
        ),
        title: Text(
          widget.account.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.account.name == 'Ahorros'
              ? dolarAmountFormat.format(accountRepository.getBalanceOfAccount(
                  widget.account, widget.date))
              : amountFormat.format(accountRepository.getBalanceOfAccount(
                  widget.account, widget.date)),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: accountRepository.getBalanceOfAccount(
                        widget.account, widget.date) >
                    0
                ? Colors.green
                : accountRepository.getBalanceOfAccount(
                            widget.account, widget.date) <
                        0
                    ? Colors.red
                    : Colors.grey,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}
