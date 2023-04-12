import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';

class AddTransferScreen extends StatefulWidget {
  const AddTransferScreen({
    required this.user,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Function(TransactionModel, TransactionModel) onPressed;
  final UserModel user;

  @override
  State<AddTransferScreen> createState() => _AddTransferScreenState();
}

class _AddTransferScreenState extends State<AddTransferScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  late AccountModel _fromSelectedAccount;
  late AccountModel _toSelectedAccount;

  String _selectedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    _fromSelectedAccount = widget.user.accounts[0];
    _toSelectedAccount = widget.user.accounts[1];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
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
                          color: transferColor,
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
                              color: transferColor,
                            ),
                          ),
                          controller: _amountController,
                          keyboardAppearance: Brightness.dark,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                            signed: false,
                          ),
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: transferColor,
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
                              _fromSelectedAccount.institution.backgroundColor),
                          child: Image(
                            image: AssetImage(
                              _fromSelectedAccount.institution.logo,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'From Account',
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
                                _fromSelectedAccount.name,
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
                                            _fromSelectedAccount =
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
                        leading: CircleAvatar(
                          backgroundColor: Color(
                              _toSelectedAccount.institution.backgroundColor),
                          child: Image(
                            image: AssetImage(
                              _toSelectedAccount.institution.logo,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'To Account',
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
                                _toSelectedAccount.name,
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
                                            _toSelectedAccount =
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
                                    mode: CupertinoDatePickerMode.dateAndTime,
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
                          maxLines: 1,
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

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      title: Container(
          decoration: BoxDecoration(
            color: transferColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text('Transfer', style: TextStyle(fontSize: 16)),
          )),
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
                backgroundColor: transferColor,
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
                setState(() {
                  var amount = double.parse(
                      _amountController.text.replaceAll(RegExp(r'[,]'), '.'));
                  var fromAccount = TransactionModel(
                    id: DateTime.now().millisecondsSinceEpoch,
                    note: _noteController.text,
                    amount: -amount,
                    category: transferOut,
                    account: _fromSelectedAccount,
                    date: _selectedDateTime,
                  );
                  var toAccount = TransactionModel(
                    id: DateTime.now().millisecondsSinceEpoch,
                    note: _noteController.text,
                    amount: amount,
                    category: transferIn,
                    account: _toSelectedAccount,
                    date: _selectedDateTime,
                  );
                  widget.onPressed(fromAccount, toAccount);
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
