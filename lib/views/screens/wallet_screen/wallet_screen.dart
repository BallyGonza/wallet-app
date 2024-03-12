import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/screens/wallet_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({
    required this.user,
    required this.date,
    super.key,
  });

  final DateTime date;
  final UserModel user;

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
          MaterialPageRoute<AddCreditCardScreen>(
            builder: (context) => AddCreditCardScreen(
              user: widget.user,
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
          MaterialPageRoute<AddAccountScreen>(
            builder: (context) => AddAccountScreen(
              user: widget.user,
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
              accounts: widget.user.accounts,
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
