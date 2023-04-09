import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

import '../widgets.dart';

class CreditCardList extends StatelessWidget {
  const CreditCardList({required this.user, required this.date, super.key});

  final UserModel user;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: PageView(
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: user.creditCards.length,
            itemBuilder: (context, index) {
              final creditCard = user.creditCards[index];
              return CreditCardItem(
                creditCard: creditCard,
                user: user,
                date: date,
              );
            },
          ),
        ],
      ),
    );
  }
}
