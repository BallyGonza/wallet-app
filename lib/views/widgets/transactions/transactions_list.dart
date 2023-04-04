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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransactionBloc(
        widget.user,
      ),
      child: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            updated: (updatedTransactions) {
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
                                        context.read<TransactionBloc>().add(
                                              TransactionEvent.addTransaction(
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
                    Container(
                      height: updatedTransactions.length * 73.0,
                      decoration: const BoxDecoration(
                        color: colorCards,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: updatedTransactions.isEmpty
                          ? const Center(
                              child: Text('No transactions yet'),
                            )
                          : _buildTransactionsList(
                              context, updatedTransactions),
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
      ),
    );
  }

  Widget _buildTransactionsList(
      BuildContext context, List<TransactionModel> transactions) {
    return ListView(
      reverse: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        transactions.length,
        (index) {
          final transaction = transactions[index];
          return TransactionListItem(
            transaction: transaction,
          );
        },
      ),
    );
  }
}
