import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

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
          height: transactions.length * 70,
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
        horizontal: 15,
      ),
      child: Row(
        children: [
          Date(
            date: widget.date,
            bold: true,
            size: 13,
            color: Colors.white,
          ),
          const Spacer(),
          Number(
            bold: true,
            number: totalIncome,
            color: incomeColor,
            size: 12,
          ),
          const SizedBox(width: 10),
          Number(
            bold: true,
            number: totalExpenses,
            color: expenseColor,
            size: 12,
          ),
        ],
      ),
    );
  }
}
