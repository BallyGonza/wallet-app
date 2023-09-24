import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'package:wallet_app/views/screens/wallet_screen/widgets/widgets.dart';

class CreditCardList extends StatelessWidget {
  const CreditCardList({
    required this.user,
    required this.date,
    super.key,
  });

  final UserModel user;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: PageView(
        children: [
          BlocBuilder<CreditCardBloc, CreditCardState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loaded: (creditCards) {
                  return creditCards.isEmpty
                      ? Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            color: colorCards,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              'No credit cards yet',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        )
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: creditCards.length,
                          itemBuilder: (context, index) {
                            final creditCard = creditCards[index];
                            return CreditCardItem(
                              creditCard: creditCard,
                              user: user,
                              date: date,
                            );
                          },
                        );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
