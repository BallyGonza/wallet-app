import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late CreditCardRepository creditCardRepository;

  @override
  void initState() {
    creditCardRepository = context.read<CreditCardRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<CreditCardScreen>(
            builder: (_) => CreditCardScreen(
              user: widget.user,
              creditCard: widget.creditCard,
              date: widget.date,
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
                Image(
                  image: AssetImage(widget.creditCard.institution.logo),
                  height: 50,
                  width: 50,
                  color: widget.creditCard.institution.name == 'BBVA'
                      ? Colors.white
                      : null,
                ),
                Text(
                  arg.format(
                    creditCardRepository.getTotalOfCreditCard(
                      widget.creditCard,
                      widget.date,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '**** **** **** ${widget.creditCard.number}',
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
                Image(
                  image: AssetImage(widget.creditCard.cardType.logo),
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
