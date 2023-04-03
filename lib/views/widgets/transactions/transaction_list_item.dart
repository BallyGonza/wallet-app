import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({
    required this.transaction,
    super.key,
  });

  final TransactionModel transaction;
  // format amount to 2 decimal places

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(transaction.category.color),
        child: Image.asset(
          transaction.category.image,
          width: 24,
        ),
      ),
      title: Text(
        transaction.category.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        transaction.account.name,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Text(
        '\$ ${amountFormat.format(
          transaction.amount,
        )}',
        style: TextStyle(
          color: transaction.isIncome ? Colors.green : Colors.red,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
