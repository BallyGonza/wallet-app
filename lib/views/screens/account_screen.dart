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
      appBar: _appBar(context),
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
                    _listOfTransactions(context),
                    _resume(context),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Expanded _listOfTransactions(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: colorCards,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: transactions.isEmpty
            ? const Center(
                child: Text(
                  'No transactions yet',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              )
            : ListView(
                children: List.generate(
                  transactions.length,
                  (index) {
                    final transaction = transactions[index];
                    return TransactionListItem(
                      user: widget.user,
                      transaction: transaction,
                    );
                  },
                ),
              ),
      ),
    );
  }

  Container _resume(BuildContext context) {
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
          _resumeItem(
            'Ingreso',
            accountRepository.getTotalIncomesByAccount(
              account: widget.account,
              date: widget.date,
            ),
            incomeColor.value,
          ),
          _resumeItem(
            'Gasto',
            accountRepository.getTotalExpensesByAccount(
              account: widget.account,
              date: widget.date,
            ),
            expenseColor.value,
          ),
          _resumeItem(
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

  Widget _resumeItem(String title, double amount, int color) {
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
        trailing: Text(
          widget.account.name == 'Ahorros'
              ? dolar.format(amount)
              : arg.format(amount),
          style: TextStyle(
            fontSize: 16,
            color: Color(color),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
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
                if (widget.account.description != null)
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
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet<SizedBox>(
              backgroundColor: appBackgroundColor,
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
                        onPressed: () {
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
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      ActionButton(
                        text: 'Add expense',
                        color: Color(expenseColor.value),
                        onPressed: () {
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
                        },
                      ),
                      ActionButton(
                        text: 'Add description',
                        onPressed: () {
                          Navigator.pop(context);
                          showDialog<WalletAlertDialog>(
                            context: context,
                            builder: (_) => WalletAlertDialog(
                              title: 'Add description',
                              content: WalletDialogTextField(
                                controller: descriptionController,
                                hint: 'Description',
                              ),
                              primaryActionTitle: 'Save',
                              onPressed: () {
                                context.read<AccountBloc>().add(
                                      AccountEvent.update(
                                        widget.account,
                                        widget.account.copyWith(
                                          description:
                                              descriptionController.text,
                                        ),
                                      ),
                                    );
                                Navigator.of(context).pop();
                              },
                            ),
                          );
                        },
                        color: Colors.purple,
                      ),
                      ActionButton(
                        text: 'Delete',
                        color: Colors.red,
                        onPressed: () {
                          Navigator.of(context).pop();
                          showDialog<WalletAlertDialog>(
                            context: context,
                            builder: (_) => WalletAlertDialog(
                              title: 'Delete account',
                              content: const Text(
                                'Are you sure you want to delete this account?',
                                style: TextStyle(color: Colors.white),
                              ),
                              primaryActionTitle: 'Delete',
                              onPressed: () {
                                setState(() {
                                  context.read<AccountBloc>().add(
                                        AccountEvent.remove(widget.account),
                                      );
                                  Navigator.of(context).pop();
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(FontAwesomeIcons.ellipsis),
        ),
      ],
    );
  }
}
