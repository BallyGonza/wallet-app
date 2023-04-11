import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({
    Key? key,
    required this.user,
    required this.date,
    required this.onPressedAddAccount,
    required this.onPressedAddCreditCard,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;
  final Function onPressedAddAccount;
  final Function onPressedAddCreditCard;

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: colorCards,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    AccountsBalance(
                      transactions: widget.user.transactions,
                      date: widget.date,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SummaryCard.income(
                            user: widget.user, date: widget.date),
                        SummaryCard.expense(
                            user: widget.user, date: widget.date),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            TitleListCard(
              title: 'Accounts',
              widget: AccountsList(
                user: widget.user,
                date: widget.date,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddAccountScreen(
                      user: widget.user,
                      onPressed: (account) {
                        setState(() {
                          widget.onPressedAddAccount(account);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            TitleListCard(
              title: 'Credit Cards',
              widget: CreditCardList(user: widget.user, date: widget.date),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCreditCardScreen(
                      user: widget.user,
                      onPressed: (creditCard) {
                        setState(() {
                          widget.onPressedAddCreditCard(creditCard);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
