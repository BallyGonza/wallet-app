import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/credit_card/credit_card.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({
    required this.user,
    super.key,
  });

  final UserModel user;

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  late InstitutionModel _selectedInstitution;
  late InstitutionModel _selectedCardType;

  @override
  void initState() {
    _selectedInstitution = defaultBankInstitutions[0];
    _selectedCardType = defaultCardTypes[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'New Credit Card',
        ),
      ),
      bottomNavigationBar: _saveButton(context),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    WalletListTile(
                      leading: CircleAvatar(
                        backgroundColor:
                            Color(_selectedInstitution.backgroundColor),
                        child: Image(
                          image: AssetImage(
                            _selectedInstitution.icon,
                          ),
                          height: 25,
                          width: 25,
                        ),
                      ),
                      content: const Text(
                        'Banco',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      subtitle: Text(
                        _selectedInstitution.name,
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
                                child: Expanded(
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: defaultBankInstitutions.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedInstitution =
                                                defaultBankInstitutions[index];
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 8,
                                          ),
                                          child: InstitutionListItem(
                                            color: primaryColor,
                                            institution:
                                                defaultBankInstitutions[index],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
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
                            Color(_selectedCardType.backgroundColor),
                        child: Image(
                          image: AssetImage(
                            _selectedCardType.icon,
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
                        _selectedCardType.name,
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
                                height: defaultCardTypes.length * 70,
                                child: Expanded(
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: defaultCardTypes.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        enableFeedback: false,
                                        onTap: () {
                                          setState(() {
                                            _selectedCardType =
                                                defaultCardTypes[index];
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 8,
                                          ),
                                          child: InstitutionListItem(
                                            color: primaryColor,
                                            institution:
                                                defaultCardTypes[index],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
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
                          hintText: 'Propietario',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.multiline,
                      ),
                      trailing: const SizedBox.shrink(),
                    ),
                    WalletListTile(
                      leading: const CircleAvatar(
                        backgroundColor: primaryColor,
                        child: FaIcon(
                          FontAwesomeIcons.creditCard,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      content: TextFormField(
                        controller: _numberController,
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ultimos 4 digitos de la tarjeta',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        keyboardAppearance: Brightness.dark,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      trailing: const SizedBox.shrink(),
                    ),
                  ],
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
      color: primaryColor,
      padding: const EdgeInsets.all(16),
      child: ActionButton(
        color: accentColor,
        onPressed: () {
          if (_noteController.text == '' || _numberController.text == '') {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please fill all the fields'),
              ),
            );
            return;
          }
          final creditCard = CreditCardModel(
            id: DateTime.now().millisecondsSinceEpoch,
            institution: _selectedInstitution,
            name: _noteController.text,
            cardType: _selectedCardType,
            number: _numberController.text,
            expenses: [],
          );
          context.read<CreditCardBloc>().add(CreditCardEvent.add(creditCard));

          Navigator.pop(context);
        },
        text: 'Save',
      ),
    );
  }
}
