// ignore_for_file: must_be_immutable, inference_failure_on_function_return_type

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_credit_card_expense_screen/widgets/credit_card_list_item.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';

class AddCreditCardExpenseScreen extends StatefulWidget {
  AddCreditCardExpenseScreen({
    required this.onPressed,
    required this.selectedCreditCard,
    required this.user,
    super.key,
  });

  final UserModel user;
  CreditCardModel selectedCreditCard;
  final Function(CreditCardModel, CreditCardTransactionModel) onPressed;

  @override
  State<AddCreditCardExpenseScreen> createState() =>
      _AddCreditCardExpenseScreenState();
}

class _AddCreditCardExpenseScreenState
    extends State<AddCreditCardExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  late CategoryModel _selectedCategory;
  bool _isRecurrent = false;
  int _cuotas = 1;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    _selectedCategory = defaultExpenseCategories[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: expenseColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Credit Card Expense',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _saveButton(context),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        r'$',
                        style: TextStyle(
                          fontSize: 20,
                          color: expenseColor,
                        ),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: TextFormField(
                          showCursor: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0,00',
                            hintStyle: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: expenseColor,
                            ),
                          ),
                          controller: _amountController,
                          keyboardAppearance: Brightness.dark,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: expenseColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: colorCards,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      WalletListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(
                            widget.selectedCreditCard.cardType.backgroundColor,
                          ),
                          child: Image(
                            image: AssetImage(
                              widget.selectedCreditCard.cardType.logo,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'Tarjeta',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                widget.selectedCreditCard.institution.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const FaIcon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.grey,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          showModalBottomSheet<Container>(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: widget.user.creditCards.length * 120,
                                decoration: const BoxDecoration(
                                  color: colorCards,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount:
                                              widget.user.creditCards.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              enableFeedback: false,
                                              onTap: () {
                                                setState(() {
                                                  widget.selectedCreditCard =
                                                      widget.user
                                                          .creditCards[index];
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: CreditCardListItem(
                                                creditCard: widget
                                                    .user.creditCards[index],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      WalletListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              Color(_selectedCategory.backgroundColor),
                          child: Image(
                            image: AssetImage(_selectedCategory.icon),
                            height: 25,
                            width: 25,
                            color: _selectedCategory.iconColor == null
                                ? null
                                : Color(_selectedCategory.iconColor!),
                          ),
                        ),
                        content: const Text(
                          'Categoria',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                _selectedCategory.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const FaIcon(
                                FontAwesomeIcons.chevronRight,
                                color: Colors.grey,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          showModalBottomSheet<Container>(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: defaultExpenseCategories.length * 90,
                                decoration: const BoxDecoration(
                                  color: colorCards,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount:
                                              defaultExpenseCategories.length,
                                          itemBuilder: (context, index) {
                                            return CategoryListItem(
                                              onCategoryTap: () {
                                                setState(() {
                                                  _selectedCategory =
                                                      defaultExpenseCategories[
                                                          index];
                                                });
                                                Navigator.pop(context);
                                              },
                                              onSubCategoryTap: (int subIndex) {
                                                setState(() {
                                                  _selectedCategory =
                                                      defaultExpenseCategories[
                                                                  index]
                                                              .subCategories[
                                                          subIndex];
                                                });
                                                Navigator.pop(context);
                                              },
                                              category:
                                                  defaultExpenseCategories[
                                                      index],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      WalletListTile(
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: FaIcon(
                            FontAwesomeIcons.calendar,
                            color: Colors.grey,
                          ),
                        ),
                        content: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            _selectedDate,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.grey,
                          size: 12,
                        ),
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            lastDate: DateTime.now(),
                            firstDate: DateTime.now().subtract(
                              const Duration(days: 365),
                            ),
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                _selectedDate = dateFormat.format(value);
                                _selectedDateTime = value;
                              });
                            }
                          });
                        },
                      ),
                      WalletListTile(
                        leading: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FaIcon(
                                FontAwesomeIcons.repeat,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Recurrente',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        content: const SizedBox.shrink(),
                        trailing: CupertinoSwitch(
                          value: _isRecurrent,
                          onChanged: (value) {
                            setState(() {
                              _isRecurrent = value;
                            });
                          },
                        ),
                      ),
                      if (_isRecurrent == false)
                        WalletListTile(
                          leading: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: FaIcon(
                              FontAwesomeIcons.list,
                              color: Colors.grey,
                            ),
                          ),
                          content: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            value: _cuotas,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text(
                                  '1 Cuota',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text(
                                  '2 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text(
                                  '3 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 4,
                                child: Text(
                                  '4 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 5,
                                child: Text(
                                  '5 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 6,
                                child: Text(
                                  '6 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 7,
                                child: Text(
                                  '7 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 8,
                                child: Text(
                                  '8 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 9,
                                child: Text(
                                  '9 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 10,
                                child: Text(
                                  '10 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 11,
                                child: Text(
                                  '11 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 12,
                                child: Text(
                                  '12 Cuotas',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _cuotas = value!;
                              });
                            },
                          ),
                        )
                      else
                        const SizedBox.shrink(),
                      WalletListTile(
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: FaIcon(
                            FontAwesomeIcons.fileSignature,
                            color: Colors.grey,
                          ),
                        ),
                        content: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: _noteController,
                          cursorColor: Colors.grey,
                          style: const TextStyle(color: Colors.grey),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add note',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          keyboardAppearance: Brightness.dark,
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomAppBar _saveButton(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: colorCards,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            width: MediaQuery.of(context).size.width - 32,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: expenseColor,
              ),
              onPressed: () {
                if (_amountController.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter an amount'),
                    ),
                  );
                  return;
                }
                final amount = double.parse(
                  _amountController.text.replaceAll(RegExp('[,]'), '.'),
                );
                final creditCardExpense = CreditCardTransactionModel(
                  id: DateTime.now().millisecondsSinceEpoch,
                  note: _noteController.text,
                  amount: amount,
                  category: _selectedCategory,
                  date: _selectedDateTime,
                  isReccurent: _isRecurrent,
                  cuotas: _cuotas,
                );
                widget.onPressed(widget.selectedCreditCard, creditCardExpense);
                Navigator.pop(context);
              },
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
