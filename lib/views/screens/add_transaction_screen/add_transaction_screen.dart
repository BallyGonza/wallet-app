// ignore_for_file: must_be_immutable, inference_failure_on_function_return_type, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class AddTransactionScreen extends StatefulWidget {
  AddTransactionScreen.income({
    required this.user,
    required this.selectedAccount,
    required this.onPressed,
    super.key,
  })  : _title = 'Ingreso',
        _color = incomeColor,
        _categories = user.incomeCategories;

  AddTransactionScreen.expense({
    required this.user,
    required this.selectedAccount,
    required this.onPressed,
    super.key,
  })  : _title = 'Egreso',
        _color = expenseColor,
        _categories = user.expenseCategories;

  final UserModel user;
  AccountModel selectedAccount;
  final Function(AccountModel, TransactionModel) onPressed;
  final Color _color;
  final String _title;
  final List<CategoryModel> _categories;

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  late CategoryModel _selectedCategory;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    _selectedCategory = widget._categories[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: widget._color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              widget._title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
                          color: widget._color,
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
                              color: widget._color,
                            ),
                          ),
                          controller: _amountController,
                          keyboardAppearance: Brightness.dark,
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).requestFocus(FocusNode()),
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          autofocus: true,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: widget._color,
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
                          backgroundColor:
                              Color(_selectedCategory.backgroundColor),
                          child: Image(
                            image: AssetImage(
                              _selectedCategory.icon,
                            ),
                            height: 25,
                            width: 25,
                            color: _selectedCategory.iconColor == null
                                ? null
                                : Color(_selectedCategory.iconColor!),
                          ),
                        ),
                        content: const Text(
                          'Category',
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
                          showModalBottomSheet<Padding>(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            backgroundColor: secondaryColor,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.all(8),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: widget._categories.length,
                                    itemBuilder: (context, index) {
                                      return CategoryListItem(
                                        onCategoryTap: () {
                                          setState(() {
                                            _selectedCategory =
                                                widget._categories[index];
                                          });
                                          Navigator.pop(context);
                                        },
                                        onSubCategoryTap: (int subIndex) {
                                          setState(() {
                                            _selectedCategory = widget
                                                ._categories[index]
                                                .subCategories[subIndex];
                                          });
                                          Navigator.pop(context);
                                        },
                                        category: widget._categories[index],
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      WalletListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(
                            widget.selectedAccount.institution.backgroundColor,
                          ),
                          child: Image(
                            image: AssetImage(
                              widget.selectedAccount.institution.icon,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'Account',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        subtitle: Text.rich(
                          TextSpan(
                            text: widget.selectedAccount.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            children: [
                              if (widget.selectedAccount.description != null &&
                                  widget
                                      .selectedAccount.description!.isNotEmpty)
                                TextSpan(
                                  text:
                                      ' / ${widget.selectedAccount.description}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              else
                                const TextSpan(),
                            ],
                          ),
                        ),
                        onTap: () {
                          CustomModalBottomSheet.pickAccount(
                            context,
                            widget.user.accounts,
                            (account) {
                              setState(() {
                                widget.selectedAccount = account;
                              });
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
                            lastDate: DateTime.now().add(
                              const Duration(days: 365),
                            ),
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
                            FontAwesomeIcons.fileSignature,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        trailing: const SizedBox.shrink(),
                        content: TextField(
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
                          onSubmitted: (_) => FocusScope.of(context).unfocus(),
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
      color: secondaryColor,
      child: ActionButton(
        color: widget._color,
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
          arg.format(amount);
          final transaction = TransactionModel(
            id: DateTime.now().millisecondsSinceEpoch,
            note: _noteController.text,
            amount: amount,
            category: _selectedCategory,
            date: _selectedDateTime,
          );
          widget.onPressed(
            widget.selectedAccount,
            transaction,
          );
          Navigator.pop(context);
        },
        text: 'Save',
      ),
    );
  }
}
