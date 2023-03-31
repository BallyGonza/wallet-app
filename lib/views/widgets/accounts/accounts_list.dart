import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/data.dart';

import 'accounts.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({required this.accounts, super.key});

  final List<AccountModel> accounts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Accounts',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Spacer(),
                FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.grey,
                  size: 15,
                ),
              ],
            ),
          ),
          Container(
            height: accounts.length * 49.0,
            decoration: const BoxDecoration(
              color: colorCards,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ListView.builder(
              itemCount: accounts.length - 1,
              itemBuilder: (context, index) {
                return AccountListItem(
                  account: accounts[index + 1],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
