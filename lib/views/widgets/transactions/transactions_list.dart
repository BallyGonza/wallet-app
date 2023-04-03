import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';

import 'transactions.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({required this.transactions, Key? key})
      : super(key: key);

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          updated: (transactions) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        'Transactions',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Spacer(),
                      FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: transactions.length * 85.0,
                  decoration: const BoxDecoration(
                    color: colorCards,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: transactions.isEmpty
                      ? const Center(
                          child: Text('No transactions yet'),
                        )
                      : _buildTransactionsList(context, transactions),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTransactionsList(
      BuildContext context, List<TransactionModel> transactions) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return TransactionListItem(
          transaction: transaction,
        );
      },
    );
  }
}
