import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/wallet_screen/widgets/widgets.dart';
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
              widget.account.institution.icon,
            ),
            height: 25,
            width: 25,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.account.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (widget.account.description != null) ...[
              const SizedBox(width: 4),
              Text(
                '- ${widget.account.description!}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
        subtitle: Number(
          size: 14,
          number: accountRepository.getBalanceOfAccount(
            account: widget.account,
            date: widget.date,
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
