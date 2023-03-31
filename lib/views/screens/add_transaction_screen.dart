import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final _amountController = TextEditingController();
  final _noteController = TextEditingController();
  late CategoryModel _selectedCategory;
  late AccountModel _selectedAccount;
  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  List<TagModel> _selectedTags = [];
  bool _isIncome = true;

  @override
  void initState() {
    _selectedCategory = user.categories[0];
    _selectedAccount = user.accounts[0];
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
            backgroundColor: _isIncome ? Colors.green[300] : Colors.red[300],
          ),
          onPressed: () {
            setState(() {
              _isIncome = !_isIncome;
            });
          },
          child: Text(_isIncome ? 'Income' : 'Expense',
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
                    _isIncome ? 'Income value' : 'Expense value',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      '\$',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextField(
                        showCursor: false,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '0,00',
                          hintStyle: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                        _selectedCategory.name,
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
                                        itemCount: user.categories.length - 1,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                _selectedCategory =
                                                    user.categories[index + 1];
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: CategoryListItem(
                                              category:
                                                  user.categories[index + 1],
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
                        _selectedAccount.name,
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
                                        itemCount: user.accounts.length - 1,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                _selectedAccount =
                                                    user.accounts[index + 1];
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: AccountListItem(
                                              account: user.accounts[index + 1],
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
                        _selectedDate == '' ? 'Select date' : _selectedDate,
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
                                      _selectedDate = DateFormat('dd/MM/yyyy')
                                          .format(value);
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
                      icon: FontAwesomeIcons.tags,
                      content: _selectedTags.isEmpty
                          ? const Text(
                              'Add tags',
                              style: TextStyle(color: Colors.grey),
                            )
                          : Wrap(
                              spacing: 8,
                              children: _selectedTags
                                  .map(
                                    (e) => Chip(
                                      label: Text(e.name),
                                      backgroundColor: Colors.grey[300],
                                    ),
                                  )
                                  .toList(),
                            ),
                      onTap: () {},
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
                        setState(() {
                          //TODO: add transaction
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
