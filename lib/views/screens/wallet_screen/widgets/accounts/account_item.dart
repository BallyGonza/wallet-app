import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountItem extends StatefulWidget {
  const AccountItem({
    Key? key,
    required this.account,
    required this.user,
    required this.date,
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
              builder: (_) => BlocProvider.value(
                value: BlocProvider.of<UserBloc>(context),
                child: AccountScreen(
                  user: widget.user,
                  account: widget.account,
                  date: widget.date,
                ),
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
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.account.name == 'Ahorros'
              ? dolarAmountFormat.format(accountRepository.getBalance(
                  widget.account, widget.user.transactions, widget.date))
              : amountFormat.format(accountRepository.getBalance(
                  widget.account, widget.user.transactions, widget.date)),
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: accountRepository.getBalance(widget.account,
                            widget.user.transactions, widget.date) >=
                        0
                    ? Colors.green
                    : Colors.red,
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
