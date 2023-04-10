import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class CreditCardItem extends StatefulWidget {
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
  State<CreditCardItem> createState() => _CreditCardItemState();
}

class _CreditCardItemState extends State<CreditCardItem> {
  @override
  Widget build(BuildContext context) {
    UserRepository userRepository = UserRepository();
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<UserBloc>(context),
              child: CreditCardScreen(
                user: widget.user,
                creditCard: widget.creditCard,
                date: widget.date,
              ),
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: widget.creditCard.cardType.name == 'Visa'
              ? Color(widget.creditCard.institution.visaCardColor!)
              : Color(widget.creditCard.institution.masterCardColor!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.creditCard.institution.logo,
                  width: 50,
                  height: 50,
                  color: widget.creditCard.institution.name == 'BBVA'
                      ? Colors.white
                      : null,
                ),
                Text(
                  amountFormat.format(userRepository.getTotalOfCreditCard(
                      widget.creditCard,
                      widget.date,
                      widget.user.creditCardExpenses)),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.creditCard.number
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
                  widget.creditCard.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  widget.creditCard.cardType.logo,
                  width: 50,
                  height: 50,
                  color: widget.creditCard.cardType.name == 'Visa'
                      ? Colors.white
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
