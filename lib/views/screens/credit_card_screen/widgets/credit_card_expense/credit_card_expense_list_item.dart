import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';

class CreditCardExpenseListItem extends StatelessWidget {
  const CreditCardExpenseListItem({
    required this.date,
    required this.transaction,
    required this.onPressDelete,
    super.key,
  });

  final CreditCardTransactionModel transaction;
  final DateTime date;
  final VoidCallback onPressDelete;

  @override
  Widget build(BuildContext context) {
    int currentCuota =
        (transaction.date.difference(date).inDays / 30).round().abs();
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Color(transaction.category.backgroundColor),
              child: Image(
                image: AssetImage(
                  transaction.category.icon,
                ),
                height: 25,
                width: 25,
                color: transaction.category.iconColor == null
                    ? null
                    : Color(transaction.category.iconColor!),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
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
                const SizedBox(
                  height: 2,
                ),
                Text(
                  transaction.creditCard.institution.name,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amountFormat.format(
                    transaction.amount / transaction.cuotas,
                  ),
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 2),
                transaction.cuotas > 1
                    ? Text(
                        '$currentCuota/${transaction.cuotas} cuotas',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          backgroundColor: colorCards,
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      DescriptionItem(
                        title: 'Categoria',
                        icon: transaction.category.icon,
                        iconColor: transaction.category.iconColor,
                        backgroundColor: transaction.category.backgroundColor,
                        description: transaction.category.name,
                        transaction: transaction,
                      ),
                      DescriptionItem(
                        title: 'Banco',
                        icon: transaction.creditCard.institution.logo,
                        backgroundColor:
                            transaction.creditCard.institution.backgroundColor,
                        description: transaction.creditCard.institution.name,
                        transaction: transaction,
                      ),
                      DescriptionItem(
                        title: 'Numero de tarjeta',
                        icon: transaction.creditCard.cardType.logo,
                        backgroundColor: white,
                        description: transaction.creditCard.number
                            .replaceAllMapped(
                              RegExp(r'.{4}'),
                              (Match m) => '${m[0]} ',
                            )
                            .trim(),
                        transaction: transaction,
                      ),
                      DescriptionItem(
                        title: 'Monto',
                        icon: 'assets/icons/coin.png',
                        backgroundColor: yellow,
                        description: amountFormat.format(transaction.amount),
                        descriptionColor: transaction.category.isIncome
                            ? incomeColor
                            : expenseColor,
                        transaction: transaction,
                      ),
                      DescriptionItem(
                        title: 'Fecha',
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
            );
          },
        );
      },
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
  final CreditCardTransactionModel transaction;

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
