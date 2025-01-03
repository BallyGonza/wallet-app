// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';

class AddTransferScreen extends StatefulWidget {
  const AddTransferScreen({
    required this.user,
    required this.onPressed,
    super.key,
  });

  final UserModel user;
  final Function(AccountModel, TransactionModel, AccountModel, TransactionModel)
      onPressed;

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
                          color: transferColor,
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
                              color: transferColor,
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
                            color: transferColor,
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
                            _fromSelectedAccount.institution.backgroundColor,
                          ),
                          child: Image(
                            image: AssetImage(
                              _fromSelectedAccount.institution.icon,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'From Account',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        subtitle: Text.rich(
                          TextSpan(
                            text: _fromSelectedAccount.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            children: [
                              if (_fromSelectedAccount.description != null)
                                TextSpan(
                                  text:
                                      ' / ${_fromSelectedAccount.description}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                )
                              else
                                const TextSpan(),
                            ],
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
                                    itemCount: widget.user.accounts.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        enableFeedback: false,
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
                            _toSelectedAccount.institution.backgroundColor,
                          ),
                          child: Image(
                            image: AssetImage(
                              _toSelectedAccount.institution.icon,
                            ),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        content: const Text(
                          'To Account',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        subtitle: Text.rich(
                          TextSpan(
                            text: _toSelectedAccount.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            children: [
                              if (_toSelectedAccount.description != null)
                                TextSpan(
                                  text: ' / ${_toSelectedAccount.description}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                )
                              else
                                const TextSpan(),
                            ],
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
                                    itemCount: widget.user.accounts.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        enableFeedback: false,
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
                            FontAwesomeIcons.fileSignature,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        trailing: const SizedBox.shrink(),
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
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).unfocus(),
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
          child: Text(
            'Transfer',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
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

                final amount = double.parse(
                  _amountController.text.replaceAll(RegExp('[,]'), '.'),
                );
                final fromAccount = TransactionModel(
                  id: DateTime.now().millisecondsSinceEpoch,
                  note: _noteController.text,
                  amount: amount,
                  category: transferOut,
                  date: _selectedDateTime,
                );
                final toAccount = TransactionModel(
                  id: DateTime.now().millisecondsSinceEpoch,
                  note: _noteController.text,
                  amount: amount,
                  category: transferIn,
                  date: _selectedDateTime,
                );

                widget.onPressed(
                  _fromSelectedAccount,
                  fromAccount,
                  _toSelectedAccount,
                  toAccount,
                );

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
