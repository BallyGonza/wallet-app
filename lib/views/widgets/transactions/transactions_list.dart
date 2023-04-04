import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({required this.user, Key? key}) : super(key: key);

  final UserModel user;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          updated: (user) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Transactions',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => AddTransactionScreen(
                                  onPressed: (transaction) {
                                    setState(() {
                                      context.read<UserBloc>().add(
                                            UserEvent.addTransaction(
                                                transaction),
                                          );
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocConsumer<UserBloc, UserState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return state.maybeWhen(
                        updated: (user) {
                          return Container(
                              height: user.transactions.length * 73.0,
                              decoration: const BoxDecoration(
                                color: colorCards,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: user.transactions.isEmpty
                                  ? const Center(
                                      child: Text('No transactions yet'),
                                    )
                                  : ListView(
                                      reverse: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: List.generate(
                                        user.transactions.length,
                                        (index) {
                                          final transaction =
                                              user.transactions[index];
                                          return TransactionListItem(
                                            transaction: transaction,
                                          );
                                        },
                                      ),
                                    ));
                        },
                        orElse: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
