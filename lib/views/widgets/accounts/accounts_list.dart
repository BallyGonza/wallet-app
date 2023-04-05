import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'account_item.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({
    Key? key,
    required this.user,
    required this.usersRepository,
  }) : super(key: key);

  final UserModel user;
  final UserRepository usersRepository;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: user.accounts.length * 73.0,
      decoration: const BoxDecoration(
        color: colorCards,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: user.accounts.isEmpty
          ? const Center(
              child: Text('No accounts yet'),
            )
          : ListView(
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                user.accounts.length,
                (index) {
                  final account = user.accounts[index];
                  return AccountItem(
                    account: account,
                    usersRepository: usersRepository,
                    user: user,
                  );
                },
              ),
            ),
    );
  }
}
