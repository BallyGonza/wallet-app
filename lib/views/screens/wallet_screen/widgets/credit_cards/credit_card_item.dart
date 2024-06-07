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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<CreditCardScreen>(
            builder: (context) => CreditCardScreen(
              creditCard: widget.creditCard,
              user: widget.user,
              date: widget.date,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        color: Color(widget.creditCard.institution.logoColor).withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: SizedBox(
            width: 270,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor:
                        Color(widget.creditCard.institution.backgroundColor),
                    child: Image.asset(
                      widget.creditCard.institution.icon,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  trailing: Number(
                    number: creditCardRepository.getTotalOfCreditCard(
                      widget.creditCard,
                      widget.date,
                    ),
                    size: 12,
                    color: Colors.white,
                    bold: true,
                  ),
                ),
                ListTile(
                  leading: Text(
                    '**** **** **** ${widget.creditCard.number}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Image.asset(
                    widget.creditCard.cardType.icon,
                    color: Colors.white,
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
