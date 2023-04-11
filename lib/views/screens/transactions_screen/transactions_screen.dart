import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key, required this.user, required this.date})
      : super(key: key);

  final UserModel user;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = UserRepository();
    final transactions = userRepository.getTransactionsByDate(user, date);

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: colorCards,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: transactions.isEmpty ? _emptyTransactions() : _transactions(),
      ),
    );
  }

  ListView _transactions() {
    return ListView.builder(
      itemCount: 31,
      itemBuilder: (context, index) {
        return TransactionsList(
          user: user,
          date: date,
          day: 31 - index,
        );
      },
    );
  }

  Center _emptyTransactions() {
    return const Center(
      child: Text('No transactions yet',
          style: TextStyle(fontSize: 12, color: Colors.grey)),
    );
  }
}
