import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class CreditCardItem extends StatelessWidget {
  const CreditCardItem({
    required this.creditCard,
    required this.user,
    required this.date,
    super.key,
  });

  final CreditCardModel creditCard;
  final UserModel user;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    CreditCardRepository creditCardRepository = CreditCardRepository();
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => CreditCardScreen(
              user: user,
              creditCard: creditCard,
              date: date,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: creditCard.cardType.name == 'Visa'
              ? Color(creditCard.institution.visaCardColor!)
              : Color(creditCard.institution.masterCardColor!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(creditCard.institution.logo),
                  height: 50,
                  width: 50,
                  color: creditCard.institution.name == 'BBVA'
                      ? Colors.white
                      : null,
                ),
                Text(
                  amountFormat.format(creditCardRepository.getTotalOfCreditCard(
                      creditCard, date)),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                creditCard.number
                    .replaceAllMapped(
                      RegExp(r'.{4}'),
                      (Match m) => '${m[0]} ',
                    )
                    .trim(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  creditCard.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Image(
                  image: AssetImage(creditCard.cardType.logo),
                  height: 50,
                  width: 50,
                  color:
                      creditCard.cardType.name == 'Visa' ? Colors.white : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
