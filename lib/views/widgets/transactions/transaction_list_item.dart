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
        FocusScope.of(context).unfocus();
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
                            icon: transaction.category.icon,
                            iconColor: transaction.category.iconColor,
                            backgroundColor:
                                transaction.category.backgroundColor,
                            description: transaction.category.name,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Account',
                            icon: transaction.account.institution.logo,
                            backgroundColor:
                                transaction.account.institution.backgroundColor,
                            description: transaction.account.name,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Amount',
                            icon: 'assets/icons/coin.png',
                            backgroundColor: yellow,
                            description: transaction.account.name == 'Ahorros'
                                ? dolarAmountFormat.format(
                                    transaction.amount,
                                  )
                                : amountFormat.format(
                                    transaction.amount,
                                  ),
                            descriptionColor: transaction.category.isIncome
                                ? incomeColor
                                : expenseColor,
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Date',
                            icon: 'assets/icons/calendar.png',
                            backgroundColor: indigo,
                            description: dateFormat.format(transaction.date),
                            transaction: transaction,
                          ),
                          DescriptionItem(
                            title: 'Note',
                            icon: 'assets/icons/pencil.png',
                            backgroundColor: indigo,
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
          backgroundColor: Color(transaction.category.backgroundColor),
          child: Image(
            image: AssetImage(transaction.category.icon),
            height: 25,
            width: 25,
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
          transaction.account.name == 'Ahorros'
              ? dolarAmountFormat.format(
                  transaction.amount,
                )
              : amountFormat.format(
                  transaction.amount,
                ),
          style: TextStyle(
            color: transaction.category.isIncome ? Colors.green : Colors.red,
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
    required this.backgroundColor,
    required this.description,
    this.descriptionColor,
    required this.transaction,
  }) : super(key: key);

  final String title;
  final String icon;
  final int? iconColor;
  final int backgroundColor;
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
            backgroundColor: Color(backgroundColor),
            child: Image(
              image: AssetImage(icon),
              height: 25,
              width: 25,
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
