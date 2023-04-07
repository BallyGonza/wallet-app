import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountsBalance extends StatelessWidget {
  const AccountsBalance(
      {Key? key, required this.transactions, required this.date})
      : super(key: key);

  final List<TransactionModel> transactions;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    UserRepository userRepository = UserRepository();
    return Column(
      children: [
        const Text(
          'Accounts balance',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              amountFormat.format(userRepository.getTotal(transactions, date)),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
