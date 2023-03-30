import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import 'accounts.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({required this.accounts, super.key});

  final List<AccountModel> accounts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: accounts.length * 75.0,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 38, 38, 38),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListView.builder(
          itemCount: accounts.length,
          itemBuilder: (context, index) {
            return AccountListItem(
              account: accounts[index],
            );
          },
        ),
      ),
    );
  }
}
