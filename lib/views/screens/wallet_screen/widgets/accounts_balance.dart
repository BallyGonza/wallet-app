import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountsBalance extends StatelessWidget {
  const AccountsBalance({
    required this.accounts,
    required this.date,
    super.key,
  });

  final List<AccountModel> accounts;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final userRepository = UserRepository();
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          const Text(
            'Accounts balance',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                arg.format(userRepository.getBalance(accounts, date)),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
