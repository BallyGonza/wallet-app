// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/credit_card_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({
    required this.user,
    required this.date,
    required this.creditCard,
    super.key,
  });

  final UserModel user;
  final CreditCardModel creditCard;
  final DateTime date;

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  late CreditCardRepository creditCardRepository;
  late List<CreditCardTransactionModel> creditCardExpenses;

  @override
  void initState() {
    creditCardRepository = context.read<CreditCardRepository>();
    creditCardExpenses = creditCardRepository.getTransactionsByCreditCard(
      widget.creditCard,
      widget.date,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreditCardBloc, CreditCardState>(
      builder: (context, state) {
        creditCardExpenses = creditCardRepository.getTransactionsByCreditCard(
          widget.creditCard,
          widget.date,
        );
        return Scaffold(
          bottomNavigationBar:
              _bottomNavBar(context, creditCardRepository, creditCardExpenses),
          appBar: _appBar(context),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  child: ListTile(
                    title: const Text(
                      'Owner',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      widget.creditCard.name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListTile(
                    title: const Text(
                      'Card number',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      '**** **** **** ${widget.creditCard.number}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                _expensesList(creditCardExpenses, context),
                _totalExpenses(creditCardRepository, creditCardExpenses),
              ],
            ),
          ),
        );
      },
    );
  }

  Expanded _expensesList(
    List<CreditCardTransactionModel> creditCardExpenses,
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: _expenses(creditCardExpenses, context),
      ),
    );
  }

  Stack _expenses(
    List<CreditCardTransactionModel> creditCardExpenses,
    BuildContext context,
  ) {
    return Stack(
      children: [
        if (creditCardExpenses.isEmpty)
          _emptyExpenses()
        else
          ListView(
            children: List.generate(
              creditCardExpenses.length,
              (index) {
                final creditCardExpense = creditCardExpenses[index];
                return CreditCardExpenseListItem(
                  date: widget.date,
                  transaction: creditCardExpense,
                  onPressDelete: () {
                    setState(() {
                      context.read<CreditCardBloc>().add(
                            CreditCardEvent.removeTransaction(
                              widget.creditCard,
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
      ],
    );
  }

  Center _emptyExpenses() {
    return const Center(
      child: Text(
        'No expenses yet',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }

  ListTile _totalExpenses(
    CreditCardRepository creditCardRepository,
    List<CreditCardTransactionModel> creditCardExpenses,
  ) {
    return ListTile(
      title: const Text(
        'Gastos totales',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Number(
        number: creditCardRepository.getTotalOfCreditCard(
          widget.creditCard,
          widget.date,
        ),
        size: 16,
        color: expenseColor,
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    final numberCardController = TextEditingController();
    return AppBar(
      elevation: 0,
      title: Container(
        decoration: BoxDecoration(
          color: Color(widget.creditCard.institution.logoColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            widget.creditCard.institution.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet<SizedBox>(
              backgroundColor: primaryColor,
              constraints: const BoxConstraints(
                maxHeight: 180,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (_) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ActionButton(
                        text: 'Add expense',
                        color: Color(expenseColor.value),
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute<AddCreditCardExpenseScreen>(
                                builder: (_) => AddCreditCardExpenseScreen(
                                  selectedCreditCard: widget.creditCard,
                                  user: widget.user,
                                  onPressed: (
                                    selectedCreditCard,
                                    creditCardExpense,
                                  ) {
                                    setState(() {
                                      context.read<CreditCardBloc>().add(
                                            CreditCardEvent.addTransaction(
                                              selectedCreditCard,
                                              creditCardExpense,
                                            ),
                                          );
                                    });
                                  },
                                ),
                              ),
                            );
                          });
                        },
                      ),
                      ActionButton(
                        text: 'Editar',
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context).pop();
                          showDialog<void>(
                            context: context,
                            builder: (_) => CustomAlertDialog(
                              title: 'Editar tarjeta',
                              content: CustomDialogTextField(
                                controller: numberCardController,
                                hint: 'Número de tarjeta',
                              ),
                              primaryActionTitle: 'Save',
                              onPrimaryPressed: () {
                                setState(() {
                                  context.read<CreditCardBloc>().add(
                                        CreditCardEvent.update(
                                          CreditCardModel(
                                            id: widget.creditCard.id,
                                            cardType:
                                                widget.creditCard.cardType,
                                            name: widget.creditCard.name,
                                            number: numberCardController.text
                                                .trim(),
                                            institution:
                                                widget.creditCard.institution,
                                            expenses:
                                                widget.creditCard.expenses,
                                          ),
                                        ),
                                      );
                                });
                              },
                            ),
                          );
                        },
                      ),
                      ActionButton(
                        text: 'Delete',
                        color: Colors.red,
                        onPressed: () {
                          Navigator.of(context).pop();
                          showDialog<void>(
                            context: context,
                            builder: (_) => CustomAlertDialog(
                              title: 'Delete card',
                              content: const Text(
                                'Are you sure you want to delete this card?',
                                style: TextStyle(color: Colors.white),
                              ),
                              primaryActionTitle: 'Delete',
                              onPrimaryPressed: () {
                                Navigator.of(context).pop();
                                context.read<CreditCardBloc>().add(
                                      CreditCardEvent.remove(
                                        widget.creditCard,
                                      ),
                                    );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(FontAwesomeIcons.ellipsis),
        ),
      ],
    );
  }

  Padding _bottomNavBar(
    BuildContext context,
    CreditCardRepository creditCardRepository,
    List<CreditCardTransactionModel> creditCardExpenses,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          elevation: 0,
          backgroundColor: Color(widget.creditCard.institution.logoColor),
        ),
        onPressed: () {
          setState(() {
            context.read<AccountBloc>().add(
                  AccountEvent.addTransaction(
                    widget.user.accounts.firstWhere(
                      (element) =>
                          element.name == widget.creditCard.institution.name,
                    ),
                    TransactionModel(
                      id: DateTime.now().microsecondsSinceEpoch,
                      date: widget.date,
                      amount: creditCardRepository.getTotalOfCreditCard(
                        widget.creditCard,
                        widget.date,
                      ),
                      note: 'Pago de tarjeta de crédito',
                      category: widget.creditCard.cardType.name == 'Visa'
                          ? widget.user.expenseCategories
                              .firstWhere(
                                (element) =>
                                    element.name == 'Tarjeta de Credito',
                              )
                              .subCategories[0]
                          : widget.creditCard.cardType.name == 'Master Card'
                              ? widget.user.expenseCategories
                                  .firstWhere(
                                    (element) =>
                                        element.name == 'Tarjeta de Credito',
                                  )
                                  .subCategories[1]
                              : widget.user.expenseCategories
                                  .firstWhere(
                                    (element) =>
                                        element.name == 'Tarjeta de Credito',
                                  )
                                  .subCategories[2],
                    ),
                  ),
                );
            context.read<CreditCardBloc>().add(
                  CreditCardEvent.pay(widget.creditCard, widget.date),
                );
            Navigator.pop(context);
          });
        },
        child: const Text(
          'Pay',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
