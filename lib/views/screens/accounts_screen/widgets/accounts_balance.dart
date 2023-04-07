import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class AccountsBalance extends StatelessWidget {
  const AccountsBalance({Key? key, required this.transactions})
      : super(key: key);

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Accounts balance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              amountFormat.format(
                double.parse(transactions.isEmpty
                    ? '0'
                    : transactions
                        .map((e) => e.amount)
                        .reduce((value, element) => value + element)
                        .toStringAsFixed(2)),
              ),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
