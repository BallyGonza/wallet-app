import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final _inputController = TextEditingController();
  String _selectedCategory = '';
  String _selectedAccount = '';
  String _selectedDate = '';
  List<TagModel> _selectedTags = [];
  bool _isIncome = true;

  @override
  void initState() {
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
                    Text(
                      _inputController.text.isEmpty
                          ? '0,00'
                          : _inputController.text,
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                        _selectedCategory == ''
                            ? 'Select category'
                            : _selectedCategory,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
                    ),
                    WalletListTile(
                      icon: FontAwesomeIcons.wallet,
                      content: Text(
                        _selectedAccount == ''
                            ? 'Select account'
                            : _selectedAccount,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey,
                      ),
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
                    ),
                    const WalletListTile(
                      icon: FontAwesomeIcons.solidNoteSticky,
                      content: Text(
                        'Add note',
                        style: TextStyle(color: Colors.grey),
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
                      onPressed: () {},
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
