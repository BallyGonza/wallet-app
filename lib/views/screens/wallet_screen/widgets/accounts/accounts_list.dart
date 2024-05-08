import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/screens/wallet_screen/widgets/accounts/account_item.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({
    required this.user,
    required this.date,
    super.key,
  });

  final DateTime date;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loaded: (accounts) => Container(
            height: accounts.isEmpty ? 100 : accounts.length * 73.0,
            decoration: const BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: accounts.isEmpty
                ? const Center(
                    child: Text(
                      'No accounts yet',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                : ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      accounts.length,
                      (index) {
                        final account = accounts[index];
                        return AccountItem(
                          user: user,
                          account: account,
                          date: date,
                        );
                      },
                    ),
                  ),
          ),
        );
      },
    );
  }
}
