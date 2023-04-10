import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'widgets/widgets.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({
    Key? key,
    required this.user,
    required this.date,
    required this.creditCard,
  }) : super(key: key);

  final UserModel user;
  final CreditCardModel creditCard;
  final DateTime date;

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  @override
  Widget build(BuildContext context) {
    final creditCardExpenses = widget.user.creditCardExpenses
        .where((element) =>
            element.creditCard.id == widget.creditCard.id &&
            element.date.month == widget.date.month &&
            element.date.year == widget.date.year)
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: colorCards,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: creditCardExpenses.isEmpty
              ? const Center(
                  child: Text('No expenses yet',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                )
              : ListView(
                  children: List.generate(
                    creditCardExpenses.length,
                    (index) {
                      final creditCardExpense = creditCardExpenses[index];
                      return CreditCardExpenseListItem(
                        transaction: creditCardExpense,
                        onPressDelete: () {
                          setState(() {
                            context.read<UserBloc>().add(
                                  UserEvent.removeCreditCardExpense(
                                    creditCardExpense,
                                  ),
                                );
                          });
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}
