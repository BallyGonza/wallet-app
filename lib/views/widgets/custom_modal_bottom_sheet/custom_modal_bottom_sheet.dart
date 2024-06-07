import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/add_transaction_screen/widgets/account_list_item.dart';
import 'package:wallet_app/views/views.dart';

class CustomModalBottomSheet {
  static void pickBank(
    BuildContext context,
    void Function(InstitutionModel) onSelect,
  ) {
    FocusScope.of(context).unfocus();
    showModalBottomSheet<void>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      backgroundColor: secondaryColor,
      context: context,
      builder: (BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
        return Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: screenHeight * 0.6,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: defaultBankInstitutions.length,
              itemBuilder: (context, index) {
                final institution = defaultBankInstitutions[index];
                return GestureDetector(
                  onTap: () {
                    onSelect(institution);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: InstitutionListItem(
                      color: primaryColor,
                      institution: institution,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  static void pickAccount(
    BuildContext context,
    List<AccountModel> accounts,
    void Function(AccountModel) onSelect,
  ) {
    FocusScope.of(context).unfocus();
    showModalBottomSheet<void>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      backgroundColor: secondaryColor,
      context: context,
      builder: (BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
        return Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: screenHeight * 0.6,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: accounts.length,
              itemBuilder: (context, index) {
                final account = accounts[index];
                return GestureDetector(
                  onTap: () {
                    onSelect(account);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: AccountListItem(
                      account: account,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
