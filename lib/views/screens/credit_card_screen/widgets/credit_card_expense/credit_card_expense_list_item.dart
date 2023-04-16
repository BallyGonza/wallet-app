import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';

import 'package:wallet_app/data/data.dart';

class CreditCardExpenseListItem extends StatefulWidget {
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
  State<CreditCardExpenseListItem> createState() =>
      _CreditCardExpenseListItemState();
}

class _CreditCardExpenseListItemState extends State<CreditCardExpenseListItem> {
  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    int currentCuota =
        (widget.transaction.date.difference(widget.date).inDays / 30)
            .round()
            .abs();
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor:
                  Color(widget.transaction.category.backgroundColor),
              child: Image(
                image: AssetImage(
                  widget.transaction.category.icon,
                ),
                height: 25,
                width: 25,
                color: widget.transaction.category.iconColor == null
                    ? null
                    : Color(widget.transaction.category.iconColor!),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.transaction.category.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                widget.transaction.note != ''
                    ? Text(
                        widget.transaction.note,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    : const SizedBox.shrink(),
                widget.transaction.note != ''
                    ? const SizedBox(height: 2)
                    : const SizedBox.shrink(),
                Text(
                  '${widget.transaction.date.day}/${widget.transaction.date.month}/${widget.transaction.date.year}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
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
                    widget.transaction.amount / widget.transaction.cuotas,
                  ),
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 2),
                widget.transaction.isReccurent == false
                    ? Text(
                        '$currentCuota/${widget.transaction.cuotas} cuotas',
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
                        icon: widget.transaction.category.icon,
                        iconColor: widget.transaction.category.iconColor,
                        backgroundColor:
                            widget.transaction.category.backgroundColor,
                        description: widget.transaction.category.name,
                        transaction: widget.transaction,
                        onTap: () {},
                      ),
                      DescriptionItem(
                        title: 'Banco',
                        icon: widget.transaction.creditCard.institution.logo,
                        backgroundColor: widget
                            .transaction.creditCard.institution.backgroundColor,
                        description:
                            widget.transaction.creditCard.institution.name,
                        transaction: widget.transaction,
                        onTap: () {},
                      ),
                      DescriptionItem(
                        title: 'Numero de tarjeta',
                        icon: widget.transaction.creditCard.cardType.logo,
                        backgroundColor: white,
                        description: widget.transaction.creditCard.number
                            .replaceAllMapped(
                              RegExp(r'.{4}'),
                              (Match m) => '${m[0]} ',
                            )
                            .trim(),
                        transaction: widget.transaction,
                        onTap: () {},
                      ),
                      DescriptionItem(
                        title: 'Monto',
                        icon: 'assets/icons/coin.png',
                        backgroundColor: yellow,
                        description:
                            amountFormat.format(widget.transaction.amount),
                        descriptionColor: widget.transaction.category.isIncome
                            ? incomeColor
                            : expenseColor,
                        transaction: widget.transaction,
                        onTap: () {
                          // showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     return AlertDialog(
                          //       title: const Text('Editar monto'),
                          //       content: TextField(
                          //         controller: amountController,
                          //         keyboardType: TextInputType.number,
                          //         decoration: const InputDecoration(
                          //           hintText: 'Monto',
                          //         ),
                          //       ),
                          //       actions: [
                          //         TextButton(
                          //           onPressed: () {
                          //             Navigator.of(context).pop();
                          //           },
                          //           child: const Text('Cancelar'),
                          //         ),
                          //         TextButton(
                          //           onPressed: () {
                          //             var amount = double.parse(amountController
                          //                 .text
                          //                 .replaceAll(RegExp(r'[,]'), '.'));
                          //             setState(() {
                          //               widget.transaction.amount = amount;
                          //             });

                          //              context
                          //               UserEvent.updateCreditCardExpense(
                          //                 widget.transaction.copyWith(
                          //                   amount: amount,
                          //                 ),
                          //               ),
                          //             );
                          //             Navigator.of(context).pop();
                          //           },
                          //           child: const Text('Guardar'),
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // );
                        },
                      ),
                      DescriptionItem(
                        title: 'Fecha',
                        icon: 'assets/icons/calendar.png',
                        backgroundColor: indigo,
                        description: dateFormat.format(widget.transaction.date),
                        transaction: widget.transaction,
                        onTap: () {},
                      ),
                      DescriptionItem(
                        title: 'Note',
                        icon: 'assets/icons/pencil.png',
                        backgroundColor: indigo,
                        description: widget.transaction.note.isEmpty
                            ? 'None'
                            : widget.transaction.note,
                        transaction: widget.transaction,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                      onPressed: widget.onPressDelete,
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
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String icon;
  final int? iconColor;
  final int backgroundColor;
  final String description;
  final Color? descriptionColor;
  final CreditCardTransactionModel transaction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Color(backgroundColor),
          child: Image(
            image: AssetImage(icon),
            height: 25,
            width: 25,
            color: iconColor != null ? Color(iconColor!) : null,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: descriptionColor ?? Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
