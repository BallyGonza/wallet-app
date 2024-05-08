import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({
    required this.user,
    super.key,
  });

  final UserModel user;

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  late InstitutionModel _selectedInstitution;

  @override
  void initState() {
    _selectedInstitution = defaultInstitutions[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Account',
        ),
      ),
      bottomNavigationBar: _saveButton(context),
      body: SafeArea(
        child: Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: defaultInstitutions.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedInstitution = defaultInstitutions[index];
                    });
                  },
                  child: InstitutionListItem(
                    color: primaryColor,
                    selected:
                        _selectedInstitution == defaultInstitutions[index],
                    institution: defaultInstitutions[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  BottomAppBar _saveButton(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(16),
      color: primaryColor,
      child: ActionButton(
        color: accentColor!,
        onPressed: () {
          final account = AccountModel(
            id: DateTime.now().millisecondsSinceEpoch,
            institution: _selectedInstitution,
            name: _selectedInstitution.name,
          );
          context.read<AccountBloc>().add(AccountEvent.add(account));

          Navigator.pop(context);
        },
        text: 'Save',
      ),
    );
  }
}
