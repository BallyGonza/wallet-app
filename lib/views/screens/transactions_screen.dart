import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({
    Key? key,
    required this.user,
    required this.usersRepository,
  }) : super(key: key);

  final UserModel user;
  final UserRepository usersRepository;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeCard(
              title: 'Transactions',
              onTap: () {},
              widget: TransactionsList(
                user: user,
                usersRepository: usersRepository,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
