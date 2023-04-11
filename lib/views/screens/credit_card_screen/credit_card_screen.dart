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

    creditCardExpenses = creditCardExpenses
        .where((element) =>
            element.cuotas >=
            1 +
                (element.date.difference(widget.date).inDays / 30)
                    .round()
                    .abs())
        .toList();

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            elevation: 0,
            backgroundColor: Color(widget.creditCard.institution.logoColor!),
          ),
          onPressed: () {
            setState(() {
              context.read<UserBloc>().add(
                    UserEvent.addTransaction(
                      TransactionModel(
                        id: DateTime.now().microsecondsSinceEpoch,
                        date: widget.date,
                        amount: userRepository.getTotalOfCreditCard(
                                widget.creditCard,
                                widget.date,
                                creditCardExpenses) *
                            -1,
                        note: widget.creditCard.institution.name,
                        account: widget.user.accounts.firstWhere((element) =>
                            element.name == widget.creditCard.institution.name),
                        category: widget.creditCard.cardType.name == 'Visa'
                            ? widget.user.expenseCategories
                                .firstWhere((element) =>
                                    element.name == 'Tarjeta de Credito')
                                .subCategories[0]
                            : widget.user.expenseCategories
                                .firstWhere((element) =>
                                    element.name == 'Tarjeta de Credito')
                                .subCategories[1],
                      ),
                    ),
                  );
              context.read<UserBloc>().add(
                    UserEvent.payCreditCard(creditCardExpenses, widget.date),
                  );
              Navigator.pop(context);
            });
          },
          child: const Text(
            'Pagar',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
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
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Eliminar tarjeta'),
                  content: const Text(
                      '¿Estás seguro que deseas eliminar esta tarjeta?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          context.read<UserBloc>().add(
                                UserEvent.removeCreditCard(widget.creditCard),
                              );
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('Eliminar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(FontAwesomeIcons.ellipsisVertical),
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
                              date: widget.date,
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
