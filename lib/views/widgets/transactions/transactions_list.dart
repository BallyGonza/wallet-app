import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/widgets/transactions/transaction_list_item.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({
    required this.user,
    required this.date,
    required this.day,
    super.key,
  });

  final UserModel user;
  final DateTime date;
  final int day;

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  late TransactionRepository transactionRepository;

  @override
  void initState() {
    transactionRepository = context.read<TransactionRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loaded: (accounts) {
            final transactions = transactionRepository.getTransactionsByDay(
              accounts,
              widget.date,
              widget.day,
            );

            if (transactions.isEmpty) {
              return const SizedBox.shrink();
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        _getFormattedDate(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      _formatAmount(
                        transactionRepository.getTotalIncomeByDay(
                          transactions,
                          widget.date,
                          widget.day,
                        ),
                        Colors.green,
                      ),
                      const SizedBox(width: 10),
                      _formatAmount(
                        transactionRepository.getTotalExpensesByDay(
                          transactions,
                          widget.date,
                          widget.day,
                        ),
                        Colors.red,
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                SizedBox(
                  height: transactions.length * 71,
                  child: ListView.builder(
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = transactions[index];
                      return TransactionListItem(
                        user: widget.user,
                        transaction: transaction,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  // Helper method to format the date
  String _getFormattedDate() {
    final now = DateTime.now();
    if (widget.date.day == widget.day &&
        widget.date.month == now.month &&
        widget.date.year == now.year) {
      return 'Hoy';
    }
    return DateFormat('EEEE dd').format(
      DateTime(widget.date.year, widget.date.month, widget.day),
    );
  }

  // Helper method to format the amount
  Widget _formatAmount(double amount, Color color) {
    final formatter = NumberFormat.currency(symbol: r'$', decimalDigits: 2);
    return Text(
      formatter.format(amount),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: 12,
      ),
    );
  }
}
