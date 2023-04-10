import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final UserRepository userRepository = UserRepository();
    var creditCardExpenses = widget.user.creditCardExpenses
        .where((element) => element.creditCard.id == widget.creditCard.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
            decoration: BoxDecoration(
              color: Color(widget.creditCard.institution.logoColor!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(widget.creditCard.name,
                  style: const TextStyle(fontSize: 16)),
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.ellipsisVertical, size: 16),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total expenses',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    amountFormat.format(userRepository.getTotalOfCreditCard(
                        widget.creditCard, widget.date, creditCardExpenses)),
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
