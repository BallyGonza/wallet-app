import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountItem extends StatefulWidget {
  const AccountItem({
    required this.account,
    required this.date,
    required this.user,
    super.key,
  });

  final AccountModel account;
  final UserModel user;
  final DateTime date;

  @override
  State<AccountItem> createState() => _AccountItemState();
}

class _AccountItemState extends State<AccountItem> {
  late AccountRepository accountRepository;
  late double balance;

  @override
  void initState() {
    accountRepository = context.read<AccountRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        setState(() {
          Navigator.of(context).push(
            MaterialPageRoute<AccountScreen>(
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
          arg.format(
            accountRepository.getBalanceOfAccount(
              account: widget.account,
              date: widget.date,
            ),
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: accountRepository.getBalanceOfAccount(
                      account: widget.account,
                      date: widget.date,
                    ) >
                    0
                ? Colors.green
                : accountRepository.getBalanceOfAccount(
                          account: widget.account,
                          date: widget.date,
                        ) <
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
