import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';

import 'package:wallet_app/data/data.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({
    required this.user,
    required this.transaction,
    super.key,
  });

  final TransactionModel transaction;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    final AccountRepository accountRepository = AccountRepository();
    final account =
        accountRepository.getAccountOfTransaction(user, transaction)!;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          backgroundColor: appBackgroundColor,
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color(transaction.category.isIncome
                            ? incomeColor!.value
                            : expenseColor!.value),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(transaction.category.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5 - 100,
                    child: Column(
                      children: [
                        DescriptionItem(
                          title: 'Category',
                          icon: transaction.category.icon,
                          iconColor: transaction.category.iconColor,
                          backgroundColor: transaction.category.backgroundColor,
                          description: transaction.category.name,
                          transaction: transaction,
                        ),
                        DescriptionItem(
                          title: 'Account',
                          icon: account.institution.logo,
                          backgroundColor: account.institution.backgroundColor,
                          description: account.name,
                          transaction: transaction,
                        ),
                        DescriptionItem(
                          title: 'Amount',
                          icon: 'assets/icons/coin.png',
                          backgroundColor: yellow,
                          description: transaction.category.name == 'Ahorros'
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
                          backgroundColor: white,
                          description: dateFormat.format(transaction.date),
                          transaction: transaction,
                        ),
                        DescriptionItem(
                          title: 'Note',
                          icon: 'assets/icons/pencil.png',
                          backgroundColor: white,
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
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        context.read<AccountBloc>().add(
                            AccountEvent.removeTransaction(
                                account, transaction));
                        Navigator.pop(context);
                      },
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
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
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: transaction.category.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const WidgetSpan(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                          child: FaIcon(
                            FontAwesomeIcons.arrowRight,
                            size: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: account.name,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                transaction.note == ''
                    ? const SizedBox.shrink()
                    : Column(
                        children: [
                          const SizedBox(height: 1),
                          Text(
                            transaction.note,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 1),
                        ],
                      ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  transaction.category.name == 'Ahorros'
                      ? dolarAmountFormat.format(
                          transaction.amount,
                        )
                      : amountFormat.format(
                          transaction.amount,
                        ),
                  style: TextStyle(
                    color: transaction.category.isIncome
                        ? Colors.green
                        : Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  dateFormat.format(transaction.date),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            description,
            style: TextStyle(
              color: descriptionColor ?? Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
