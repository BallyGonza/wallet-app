import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

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
    final currentCuota =
        (widget.date.difference(widget.transaction.date).inDays / 30)
            .ceil()
            .abs();
    return InkWell(
      enableFeedback: false,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
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
                if (widget.transaction.note != '')
                  Text(
                    widget.transaction.note,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                else
                  const SizedBox.shrink(),
                if (widget.transaction.note != '')
                  const SizedBox(height: 2)
                else
                  const SizedBox.shrink(),
                Text(
                  '${widget.transaction.date.day}/${widget.transaction.date.month}/${widget.transaction.date.year}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Number(
                  number: widget.transaction.amount / widget.transaction.cuotas,
                  size: 12,
                  color: Colors.red,
                ),
                const SizedBox(height: 2),
                if (widget.transaction.isReccurent == false)
                  Text(
                    '$currentCuota/${widget.transaction.cuotas} cuotas',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                else
                  const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
        showModalBottomSheet<Padding>(
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          backgroundColor: secondaryColor,
          context: context,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    DescriptionItem(
                      title: 'Categoria',
                      icon: widget.transaction.category.icon,
                      iconColor: widget.transaction.category.iconColor,
                      backgroundColor:
                          widget.transaction.category.backgroundColor,
                      description: widget.transaction.category.name,
                      transaction: widget.transaction,
                    ),
                    DescriptionItem(
                      title: 'Monto',
                      icon: 'assets/icons/coin.png',
                      backgroundColor: yellow,
                      description: arg.format(widget.transaction.amount),
                      descriptionColor: widget.transaction.category.isIncome
                          ? incomeColor
                          : expenseColor,
                      transaction: widget.transaction,
                    ),
                    DescriptionItem(
                      title: 'Fecha',
                      icon: 'assets/icons/calendar.png',
                      backgroundColor: white,
                      description: dateFormat.format(widget.transaction.date),
                      transaction: widget.transaction,
                    ),
                    DescriptionItem(
                      title: 'Note',
                      icon: 'assets/icons/pencil.png',
                      backgroundColor: white,
                      description: widget.transaction.note.isEmpty
                          ? 'None'
                          : widget.transaction.note,
                      transaction: widget.transaction,
                    ),
                    const Spacer(),
                    ActionButton(
                      text: 'Delete',
                      onPressed: () {
                        setState(() {
                          widget.onPressDelete();
                        });
                      },
                      color: Colors.red,
                    ),
                  ],
                ),
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
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.description,
    required this.transaction,
    this.onTap,
    super.key,
    this.iconColor,
    this.descriptionColor,
  });

  final String title;
  final String icon;
  final int? iconColor;
  final int backgroundColor;
  final String description;
  final Color? descriptionColor;
  final CreditCardTransactionModel transaction;
  final VoidCallback? onTap;

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
