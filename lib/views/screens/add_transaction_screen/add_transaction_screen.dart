import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class AddTransactionScreen extends StatefulWidget {
  AddTransactionScreen.income({
    required this.user,
    required this.onPressed,
    Key? key,
  })  : _title = 'Ingreso',
        _isIncome = true,
        _color = incomeColor!,
        _categories = user.incomeCategories,
        super(key: key);

  AddTransactionScreen.expense({
    required this.user,
    required this.onPressed,
    Key? key,
  })  : _title = 'Egreso',
        _isIncome = false,
        _color = expenseColor!,
        _categories = user.expenseCategories,
        super(key: key);

  final UserModel user;
  final Function(TransactionModel) onPressed;
  final bool _isIncome;
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
  late AccountModel _selectedAccount;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    _selectedCategory = widget._categories[0];
    _selectedAccount = widget.user.accounts[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
            decoration: BoxDecoration(
              color: widget._color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(widget._title, style: const TextStyle(fontSize: 16)),
            )),
      ),
      bottomNavigationBar: _saveButton(context),
      body: Column(
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
                        color: widget._color,
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
                            color: widget._color,
                          ),
                        ),
                        controller: _amountController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: widget._color,
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
                        'Category',
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
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          backgroundColor: colorCards,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: widget._categories.length * 60.0,
                                child: ListView.builder(
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
                                      onSubCategoryTap: (subIndex) {
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
                        backgroundColor:
                            Color(_selectedAccount.institution.backgroundColor),
                        child: Image.asset(
                          _selectedAccount.institution.logo,
                          width: 25,
                          height: 25,
                        ),
                      ),
                      content: const Text(
                        'Account',
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
                              _selectedAccount.name,
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
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          backgroundColor: colorCards,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: widget.user.accounts.length * 80.0,
                                child: ListView.builder(
                                  itemCount: widget.user.accounts.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedAccount =
                                              widget.user.accounts[index];
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: AccountListItem(
                                        account: widget.user.accounts[index],
                                      ),
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
                                      _selectedDate = dateFormat.format(value);
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
                backgroundColor: widget._color,
              ),
              onPressed: () {
                if (_amountController.text == '') {
                  return;
                }
                setState(() {
                  var transaction = TransactionModel(
                    id: DateTime.now().millisecondsSinceEpoch,
                    note: _noteController.text,
                    amount: widget._isIncome
                        ? double.parse(_amountController.text)
                        : -double.parse(_amountController.text),
                    category: _selectedCategory,
                    account: _selectedAccount,
                    date: _selectedDateTime,
                  );
                  widget.onPressed(transaction);
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
