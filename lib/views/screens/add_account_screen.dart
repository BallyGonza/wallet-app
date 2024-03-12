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
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'New Account',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _saveButton(context),
      body: Padding(
        padding: const EdgeInsets.all(8),
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
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color:
                        _selectedInstitution.id == defaultInstitutions[index].id
                            ? primaryColor!
                            : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: InstitutionListItem(
                  institution: defaultInstitutions[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  BottomAppBar _saveButton(BuildContext context) {
    return BottomAppBar(
      color: colorCards,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: ActionButton(
          color: primaryColor!,
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
      ),
    );
  }
}
