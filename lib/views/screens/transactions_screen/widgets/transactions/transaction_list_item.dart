import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({
    required this.transaction,
    required this.onPressDelete,
    super.key,
  });

  final TransactionModel transaction;

  final VoidCallback onPressDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              decoration: const BoxDecoration(
                color: colorCards,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5 - 100,
                      child: Column(
                        children: [
                          DescriptionItem(
                            title: 'Category',
                            icon: transaction.category.image,
                            iconColor: transaction.category.iconColor,
                            color: transaction.category.color,
                            description: transaction.category.name,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Account',
                            icon: transaction.account.institution.image,
                            color: transaction.account.institution.color,
                            description: transaction.account.name,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Amount',
                            icon: 'assets/icons/coin.png',
                            color: 0xFFFFD700,
                            description: amountFormat.format(
                              transaction.amount,
                            ),
                            descriptionColor: transaction.isIncome
                                ? incomeColor
                                : expenseColor,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Date',
                            icon: 'assets/icons/calendar.png',
                            color: indigo,
                            description: dateFormat.format(transaction.date),
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Note',
                            icon: 'assets/icons/pencil.png',
                            color: indigo,
                            description: transaction.note.isEmpty
                                ? 'None'
                                : transaction.note,
                            transaction: transaction,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: expenseColor,
                        ),
                        onPressed: onPressDelete,
                        child: const Text(
                          'Delete',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(transaction.category.color),
          child: Image.asset(
            transaction.category.image,
            width: 24,
            color: transaction.category.iconColor == null
                ? null
                : Color(transaction.category.iconColor!),
          ),
        ),
        title: Text.rich(
          overflow: TextOverflow.ellipsis,
          TextSpan(
            text: transaction.category.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            children: [
              transaction.note.isEmpty
                  ? const TextSpan(text: '')
                  : TextSpan(
                      text: ' - ${transaction.note}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
            ],
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
          amountFormat.format(
            transaction.amount,
          ),
          style: TextStyle(
            color: transaction.isIncome ? Colors.green : Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    Key? key,
    required this.title,
    required this.icon,
    this.iconColor,
    required this.color,
    required this.description,
    this.descriptionColor,
    required this.transaction,
  }) : super(key: key);

  final String title;
  final String icon;
  final int? iconColor;
  final int color;
  final String description;
  final Color? descriptionColor;
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(color),
            child: Image.asset(
              icon,
              width: 24,
              color: iconColor != null ? Color(iconColor!) : null,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                description,
                style: TextStyle(
                  color: descriptionColor ?? Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
