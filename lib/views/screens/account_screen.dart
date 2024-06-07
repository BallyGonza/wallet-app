// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    required this.user,
    required this.date,
    required this.account,
    super.key,
  });

  final DateTime date;
  final UserModel user;
  final AccountModel account;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final descriptionController = TextEditingController();
  late TransactionRepository transactionRepository;
  late AccountRepository accountRepository;
  List<TransactionModel> transactions = [];

  @override
  void initState() {
    transactionRepository = context.read<TransactionRepository>();
    accountRepository = context.read<AccountRepository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loaded: (accounts) {
                transactions = transactionRepository.getTransactionsByAccount(
                  widget.account,
                  widget.date,
                );
                return Column(
                  children: [
                    _buildListOfTransactions(context),
                    _buildResume(context),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildListOfTransactions(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: transactions.isEmpty
            ? const Center(
                child: Text(
                  'No transactions yet',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              )
            : ListView.builder(
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
    );
  }

  Widget _buildResume(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          _buildResumeItem(
            'Ingreso',
            accountRepository.getTotalIncomesByAccount(
              account: widget.account,
              date: widget.date,
            ),
            incomeColor.value,
          ),
          _buildResumeItem(
            'Gasto',
            accountRepository.getTotalExpensesByAccount(
              account: widget.account,
              date: widget.date,
            ),
            expenseColor.value,
          ),
          _buildResumeItem(
            'Saldo',
            accountRepository.getBalanceOfAccount(
              account: widget.account,
              date: widget.date,
            ),
            accountRepository.getBalanceOfAccount(
                      account: widget.account,
                      date: widget.date,
                    ) >
                    0
                ? incomeColor.value
                : accountRepository.getBalanceOfAccount(
                          account: widget.account,
                          date: widget.date,
                        ) <
                        0
                    ? expenseColor.value
                    : Colors.grey.value,
          ),
        ],
      ),
    );
  }

  Widget _buildResumeItem(String title, double amount, int color) {
    return SizedBox(
      height: 25,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Number(
          number: amount,
          size: 16,
          bold: true,
          color: Color(color),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: Color(widget.account.institution.logoColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: widget.account.institution.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (widget.account.description != null &&
                        widget.account.description!.isNotEmpty)
                      TextSpan(
                        text: ' / ${widget.account.description}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    else
                      const TextSpan(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () => _showActions(context),
          icon: const Icon(FontAwesomeIcons.ellipsis),
        ),
      ],
    );
  }

  void _showActions(BuildContext context) {
    showModalBottomSheet<SizedBox>(
      backgroundColor: primaryColor,
      constraints: const BoxConstraints(
        maxHeight: 250,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (_) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ActionButton(
                text: 'Add income',
                color: Color(incomeColor.value),
                onPressed: () => _handleAddIncome(context),
              ),
              ActionButton(
                text: 'Add expense',
                color: Color(expenseColor.value),
                onPressed: () => _handleAddExpense(context),
              ),
              ActionButton(
                text: 'Add description',
                onPressed: () => _handleAddDescription(context),
                color: accentColor,
              ),
              ActionButton(
                text: 'Delete',
                color: Colors.red,
                onPressed: () => _handleDelete(context),
              ),
            ],
          ),
        );
      },
    );
  }

  void _handleAddIncome(BuildContext context) {
    Navigator.pop(context);
    Navigator.of(context).push(
      MaterialPageRoute<AddTransactionScreen>(
        builder: (_) => AddTransactionScreen.income(
          selectedAccount: widget.account,
          user: widget.user,
          onPressed: (account, transaction) {
            setState(() {
              context.read<AccountBloc>().add(
                    AccountEvent.addTransaction(
                      account,
                      transaction,
                    ),
                  );
            });
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  void _handleAddExpense(BuildContext context) {
    Navigator.pop(context);
    Navigator.of(context).push(
      MaterialPageRoute<AddTransactionScreen>(
        builder: (_) => AddTransactionScreen.expense(
          selectedAccount: widget.account,
          user: widget.user,
          onPressed: (account, transaction) {
            setState(() {
              context.read<AccountBloc>().add(
                    AccountEvent.addTransaction(
                      account,
                      transaction,
                    ),
                  );
            });
          },
        ),
      ),
    );
  }

  void _handleAddDescription(BuildContext context) {
    Navigator.pop(context);
    showDialog<void>(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: 'Add description',
        content: CustomDialogTextField(
          controller: descriptionController,
          hint: 'Description',
        ),
        primaryActionTitle: 'Save',
        onPrimaryPressed: () {
          context.read<AccountBloc>().add(
                AccountEvent.update(
                  widget.account,
                  widget.account.copyWith(
                    description: descriptionController.text.trim(),
                  ),
                ),
              );
        },
      ),
    );
  }

  void _handleDelete(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<void>(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: 'Delete account',
        content: const Text(
          'Are you sure you want to delete this account?',
          style: TextStyle(color: Colors.white),
        ),
        primaryActionTitle: 'Delete',
        onPrimaryPressed: () {
          setState(() {
            context.read<AccountBloc>().add(
                  AccountEvent.remove(
                    widget.account,
                  ),
                );
          });
        },
      ),
    );
  }
}
