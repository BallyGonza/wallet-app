import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'account_item.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({
    Key? key,
    required this.user,
    required this.date,
  }) : super(key: key);

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
              color: colorCards,
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
