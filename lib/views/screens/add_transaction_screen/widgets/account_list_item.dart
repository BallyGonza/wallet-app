import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountListItem extends StatefulWidget {
  const AccountListItem({
    required this.account,
    super.key,
  });

  final AccountModel account;

  @override
  State<AccountListItem> createState() => _AccountListItemState();
}

class _AccountListItemState extends State<AccountListItem> {
  late UserRepository userRepository;
  late AccountRepository accountRepository;
  late double balance;

  @override
  void initState() {
    userRepository = context.read<UserRepository>();
    accountRepository = context.read<AccountRepository>();
    balance = accountRepository.getBalanceOfAccount(
      account: widget.account,
      date: DateTime.now(),
    );
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
          backgroundColor: Color(widget.account.institution.backgroundColor),
          radius: 18,
          child: Image(
            image: AssetImage(
              widget.account.institution.icon,
            ),
            height: 25,
            width: 25,
          ),
        ),
        title: Text.rich(
          TextSpan(
            text: widget.account.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 14,
            ),
            children: [
              if (widget.account.description == null)
                const TextSpan(text: '')
              else
                TextSpan(
                  text: ' - ${widget.account.description}',
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
            ],
          ),
        ),
        subtitle: Number(
          number: balance,
          size: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}
