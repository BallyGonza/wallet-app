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
                      const Text(
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
                          decoration: const InputDecoration(
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
                          style: const TextStyle(
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
                  color: secondaryColor,
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
                              widget.selectedCreditCard.cardType.icon,
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
                        subtitle: Text(
                          widget.selectedCreditCard.institution.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
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
                                  color: secondaryColor,
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
                        subtitle: Text(
                          _selectedCategory.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
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
                                  color: secondaryColor,
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
                        leading: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: FaIcon(
                            FontAwesomeIcons.calendar,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        content: Text(
                          _selectedDate,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
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
                        leading: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: FaIcon(
                            FontAwesomeIcons.repeat,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        content: const Text(
                          'Recurrente',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                          leading: const CircleAvatar(
                            backgroundColor: primaryColor,
                            child: FaIcon(
                              FontAwesomeIcons.list,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          content: DropdownButton<int>(
                            iconSize: 0,
                            menuMaxHeight: 200,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                            value: _cuotas,
                            items: List.generate(12, (index) {
                              final cuota = index + 1;
                              return DropdownMenuItem<int>(
                                value: cuota,
                                child: Text(
                                  '$cuota Cuota${cuota > 1 ? 's' : ''}',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              );
                            }),
                            onChanged: (value) {
                              setState(() {
                                _cuotas = value!;
                              });
                            },
                            dropdownColor: secondaryColor,
                            underline: Container(
                              color: Colors.transparent,
                            ),
                          ),
                          trailing: const SizedBox.shrink(),
                        )
                      else
                        const SizedBox.shrink(),
                      WalletListTile(
                        leading: const CircleAvatar(
                          backgroundColor: primaryColor,
                          child: FaIcon(
                            FontAwesomeIcons.fileSignature,
                            color: Colors.white,
                            size: 20,
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
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).unfocus(),
                        ),
                        trailing: const SizedBox.shrink(),
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
      color: secondaryColor,
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
