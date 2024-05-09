import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/wallet_screen/widgets/widgets.dart';

class AccountsBalance extends StatefulWidget {
  const AccountsBalance({
    required this.accounts,
    required this.date,
    super.key,
  });

  final List<AccountModel> accounts;
  final DateTime date;

  @override
  State<AccountsBalance> createState() => _AccountsBalanceState();
}

class _AccountsBalanceState extends State<AccountsBalance> {
  late UserRepository userRepository;

  @override
  void initState() {
    userRepository = context.read<UserRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          const Text(
            'Accounts balance',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Number(
                size: 30,
                number: userRepository.getBalance(
                  accounts: widget.accounts,
                  date: widget.date,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
