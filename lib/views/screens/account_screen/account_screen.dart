import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';
import 'package:wallet_app/views/widgets/widgets.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    Key? key,
    required this.user,
    required this.date,
    required this.account,
  }) : super(key: key);

  final DateTime date;
  final UserModel user;
  final AccountModel account;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final AccountRepository accountRepository = AccountRepository();
  List<TransactionModel> transactions = [];

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
                transactions = accountRepository.getTransactionsByAccount(
                    widget.account, widget.user, widget.date);
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
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: colorCards,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: transactions.isEmpty
                ? const Center(
                    child: Text('No transactions yet',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.64,
            right: 20,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                widget.account.institution.logo,
                height: 50,
                width: 50,
                color: widget.account.institution.name == 'Efectivo' ||
                        widget.account.institution.name == 'Ahorros'
                    ? Colors.green
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _resume(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: [
          _resumeItem(
            'Ingreso',
            accountRepository.getTotalIncomesByAccount(
                widget.account, widget.date),
            incomeColor!.value,
          ),
          _resumeItem(
            'Gasto',
            accountRepository.getTotalExpensesByAccount(
                widget.account, widget.date),
            expenseColor!.value,
          ),
          _resumeItem(
            'Saldo',
            accountRepository.getBalanceOfAccount(widget.account, widget.date),
            accountRepository.getBalanceOfAccount(widget.account, widget.date) >
                    0
                ? incomeColor!.value
                : accountRepository.getBalanceOfAccount(
                            widget.account, widget.date) <
                        0
                    ? expenseColor!.value
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
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          widget.account.name == 'Ahorros'
              ? dolarAmountFormat.format(amount)
              : amountFormat.format(amount),
          style: TextStyle(
              fontSize: 16, color: Color(color), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
          decoration: BoxDecoration(
            color: Color(widget.account.institution.logoColor!),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(widget.account.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          )),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: appBackgroundColor,
                constraints: const BoxConstraints(
                  maxHeight: 200,
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
                          color: Color(incomeColor!.value),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(
                              MaterialPageRoute(
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
                          color: Color(expenseColor!.value),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(
                              MaterialPageRoute(
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
                          text: 'Eliminar',
                          color: Colors.red,
                          onPressed: () {
                            Navigator.of(context).pop();
                            showDialog(
                              context: context,
                              builder: (_) => WalletAlertDialog(
                                  title: 'Eliminar cuenta',
                                  content: const Text(
                                      '¿Estás seguro que deseas eliminar esta cuenta?',
                                      style: TextStyle(color: Colors.white)),
                                  primaryActionTitle: 'Eliminar',
                                  onPressed: () {
                                    setState(() {
                                      context.read<AccountBloc>().add(
                                            AccountEvent.remove(widget.account),
                                          );
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pop();
                                    });
                                  }),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                });
          },
          icon: const Icon(FontAwesomeIcons.ellipsis),
        ),
      ],
    );
  }
}
