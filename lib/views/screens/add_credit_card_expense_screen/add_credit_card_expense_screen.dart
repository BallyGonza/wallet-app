import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';

import 'widgets/credit_card_list_item.dart';

class AddCreditCardExpenseScreen extends StatefulWidget {
  const AddCreditCardExpenseScreen({
    required this.user,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Function(CreditCardTransactionModel) onPressed;
  final UserModel user;

  @override
  State<AddCreditCardExpenseScreen> createState() =>
      _AddCreditCardExpenseScreenState();
}

class _AddCreditCardExpenseScreenState
    extends State<AddCreditCardExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  late CreditCardModel _selectedCreditCard;
  late CategoryModel _selectedCategory;
  bool _isRecurrent = false;
  int _cuotas = 1;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    _selectedCreditCard = widget.user.creditCards[0];
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
              child:
                  Text('Credit Card Expense', style: TextStyle(fontSize: 16)),
            )),
      ),
      bottomNavigationBar: _saveButton(context),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '\$',
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
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: expenseColor,
                          ),
                        ),
                      )
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
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      WalletListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(
                              _selectedCreditCard.institution.backgroundColor),
                          child: Image.asset(
                            _selectedCreditCard.cardType.logo,
                            width: 25,
                            height: 25,
                          ),
                        ),
                        content: const Text(
                          'Tarjeta',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                _selectedCreditCard.institution.name,
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
                          showModalBottomSheet(
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount:
                                              widget.user.creditCards.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _selectedCreditCard = widget
                                                      .user.creditCards[index];
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
                          child: Image.asset(
                            _selectedCategory.icon,
                            width: 25,
                            height: 25,
                            color: _selectedCategory.iconColor == null
                                ? null
                                : Color(_selectedCategory.iconColor!),
                          ),
                        ),
                        content: const Text(
                          'Categoria',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
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
                          showModalBottomSheet(
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
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
                                              onSubCategoryTap: (subIndex) {
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
                          padding: EdgeInsets.only(left: 10.0),
                          child: FaIcon(
                            FontAwesomeIcons.calendar,
                            color: Colors.grey,
                          ),
                        ),
                        content: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            _selectedDate,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.grey,
                          size: 12,
                        ),
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: CupertinoTheme(
                                  data: const CupertinoThemeData(
                                    textTheme: CupertinoTextThemeData(
                                      dateTimePickerTextStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  child: CupertinoDatePicker(
                                    dateOrder: DatePickerDateOrder.dmy,
                                    backgroundColor: colorCards,
                                    mode: CupertinoDatePickerMode.date,
                                    initialDateTime: DateTime.now(),
                                    onDateTimeChanged: (value) {
                                      setState(() {
                                        _selectedDate =
                                            dateFormat.format(value);
                                        _selectedDateTime = value;
                                      });
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      WalletListTile(
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: FaIcon(
                            FontAwesomeIcons.fileSignature,
                            color: Colors.grey,
                          ),
                        ),
                        content: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          value: _cuotas,
                          items: const [
                            DropdownMenuItem(
                              value: 1,
                              child: Text('1 Cuota',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text('3 Cuotas',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            DropdownMenuItem(
                              value: 6,
                              child: Text('6 Cuotas',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            DropdownMenuItem(
                              value: 12,
                              child: Text('12 Cuotas',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _cuotas = value!;
                            });
                          },
                        ),
                      ),
                      WalletListTile(
                        leading: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
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
                                fontWeight: FontWeight.normal,
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
                      WalletListTile(
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: FaIcon(
                            FontAwesomeIcons.fileSignature,
                            color: Colors.grey,
                          ),
                        ),
                        content: TextFormField(
                          controller: _noteController,
                          cursorColor: Colors.grey,
                          style: const TextStyle(color: Colors.grey),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add note',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          maxLines: 1,
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
          SizedBox(
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
                  return;
                }
                setState(() {
                  var creditCardExpense = CreditCardTransactionModel(
                    id: DateTime.now().millisecondsSinceEpoch,
                    note: _noteController.text,
                    amount: double.parse(_amountController.text),
                    category: _selectedCategory,
                    creditCard: _selectedCreditCard,
                    date: _selectedDateTime,
                    isReccurent: _isRecurrent,
                    cuotas: _cuotas,
                  );
                  widget.onPressed(creditCardExpense);
                });
                Navigator.pop(context);
              },
              child: const Text('Save', style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
