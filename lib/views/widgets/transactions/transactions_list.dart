import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';
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
          loaded: _buildTransactionList,
        );
      },
    );
  }

  Widget _buildTransactionList(List<AccountModel> accounts) {
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
        _buildTransactionHeader(
          transactions,
        ),
        SizedBox(
          height: transactions.length * 56,
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
  }

  Widget _buildTransactionHeader(
    List<TransactionModel> transactions,
  ) {
    final totalIncome = transactionRepository.getTotalIncomeByDay(
      transactions,
      widget.date,
      widget.day,
    );
    final totalExpenses = transactionRepository.getTotalExpensesByDay(
      transactions,
      widget.date,
      widget.day,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
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
          Number(
            number: totalIncome,
            color: incomeColor,
            bold: true,
            size: 12,
          ),
          const SizedBox(width: 10),
          Number(
            number: totalExpenses,
            size: 12,
            color: expenseColor,
            bold: true,
          ),
        ],
      ),
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
}
