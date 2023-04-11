import 'package:flutter/material.dart';

import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({
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
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _firstCard(),
            const SizedBox(height: 8),
            _accounts(context),
            const SizedBox(height: 8),
            _creditCards(context),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  TitleListCard _creditCards(BuildContext context) {
    return TitleListCard(
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
    );
  }

  TitleListCard _accounts(BuildContext context) {
    return TitleListCard(
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
    );
  }

  Padding _firstCard() {
    return Padding(
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummaryCard.income(user: widget.user, date: widget.date),
                SummaryCard.expense(user: widget.user, date: widget.date),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
