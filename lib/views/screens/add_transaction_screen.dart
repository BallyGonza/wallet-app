import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen(
      {required this.onPressed, this.transaction, super.key});

  final Function(TransactionModel) onPressed;
  final TransactionModel? transaction;

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  late TextEditingController _amountController;
  late TextEditingController _noteController;
  CategoryModel _selectedCategory = user.categories[0];
  late AccountModel _selectedAccount;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();
  List<CategoryModel> _incomeCategories = [];
  List<CategoryModel> _expenseCategories = [];
  bool _isIncome = true;

  @override
  void initState() {
    _amountController = TextEditingController(
        text: widget.transaction == null
            ? ''
            : widget.transaction!.amount.toString());
    _noteController = TextEditingController(
      text: widget.transaction == null ? '' : widget.transaction!.note,
    );

    _selectedCategory = user.categories[0];
    _selectedAccount = user.accounts[0];

    _incomeCategories = user.categories.where((e) => e.isIncome).toList();
    _expenseCategories = user.categories.where((e) => !e.isIncome).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: widget.transaction == null
                ? _isIncome
                    ? Colors.green[300]
                    : Colors.red[300]
                : widget.transaction!.isIncome
                    ? Colors.green[300]
                    : Colors.red[300],
          ),
          onPressed: () {
            if (widget.transaction != null) {
              return;
            }

            setState(() {
              _isIncome = !_isIncome;
            });
          },
          child: Text(
              widget.transaction == null
                  ? _isIncome
                      ? 'Income'
                      : 'Expense'
                  : widget.transaction!.isIncome
                      ? 'Income'
                      : 'Expense',
              style: const TextStyle(fontSize: 16)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.transaction == null
                        ? _isIncome
                            ? 'Income value'
                            : 'Expense value'
                        : widget.transaction!.isIncome
                            ? 'Income value'
                            : 'Expense value',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 20,
                        color: widget.transaction == null
                            ? _isIncome
                                ? Colors.green[300]
                                : Colors.red[300]
                            : widget.transaction!.isIncome
                                ? Colors.green[300]
                                : Colors.red[300],
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextFormField(
                        autofocus: true,
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '0,00',
                          hintStyle: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: widget.transaction == null
                                ? _isIncome
                                    ? Colors.green[300]
                                    : Colors.red[300]
                                : widget.transaction!.isIncome
                                    ? Colors.green[300]
                                    : Colors.red[300],
                          ),
                        ),
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: widget.transaction == null
                                ? _isIncome
                                    ? Colors.green[300]
                                    : Colors.red[300]
                                : widget.transaction!.isIncome
                                    ? Colors.green[300]
                                    : Colors.red[300]),
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
                      icon: Icons.category,
                      content: Text(
                        widget.transaction == null
                            ? _selectedCategory.name
                            : widget.transaction!.category.name,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              decoration: const BoxDecoration(
                                color: colorCards,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height * 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.45,
                                      child: ListView.builder(
                                        itemCount: _isIncome
                                            ? _incomeCategories.length
                                            : _expenseCategories.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                _selectedCategory = _isIncome
                                                    ? _incomeCategories[index]
                                                    : _expenseCategories[index];
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: CategoryListItem(
                                              category: _isIncome
                                                  ? _incomeCategories[index]
                                                  : _expenseCategories[index],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    ActionButton(
                                      text: 'Add new category',
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    WalletListTile(
                      icon: FontAwesomeIcons.wallet,
                      content: Text(
                        widget.transaction == null
                            ? _selectedAccount.name
                            : widget.transaction!.account.name,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Container(
                              decoration: const BoxDecoration(
                                color: colorCards,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height * 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.45,
                                      child: ListView.builder(
                                        itemCount: user.accounts.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                _selectedAccount =
                                                    user.accounts[index];
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: AccountListItem(
                                              account: user.accounts[index],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    ActionButton(
                                      text: 'Add new account',
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    WalletListTile(
                      icon: FontAwesomeIcons.calendarDay,
                      content: Text(
                        widget.transaction == null
                            ? _selectedDate
                            : dateFormat.format(widget.transaction!.date),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        // cupertinoDatePicker
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
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
                                      _selectedDate = DateFormat('dd.MM.yyyy')
                                          .format(value);
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
                      icon: FontAwesomeIcons.solidNoteSticky,
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor:
                            _isIncome ? Colors.green[300] : Colors.red[300],
                      ),
                      onPressed: () {
                        if (_amountController.text == '') {
                          return;
                        }
                        setState(() {
                          var transaction = TransactionModel(
                            id: widget.transaction == null
                                ? DateTime.now().millisecondsSinceEpoch
                                : widget.transaction!.id,
                            note: _noteController.text,
                            amount: _isIncome
                                ? double.parse(_amountController.text)
                                : -double.parse(_amountController.text),
                            category: _selectedCategory,
                            account: _selectedAccount,
                            date: _selectedDateTime,
                            isIncome: _isIncome,
                          );
                          widget.onPressed(transaction);
                        });
                        Navigator.pop(context);
                      },
                      child: const Text('Save', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
