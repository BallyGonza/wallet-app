import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/widgets/widgets.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    Key? key,
    required this.user,
    required this.date,
    required this.account,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;
  final AccountModel account;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final AccountRepository accountRepository = AccountRepository();
  List<TransactionModel> transactions = [];

  @override
  void initState() {
    super.initState();
    transactions = accountRepository.getTransactionsByAccount(
        widget.account, widget.user.transactions, widget.date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
            decoration: BoxDecoration(
              color: Color(widget.account.institution.logoColor!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(widget.account.name,
                  style: const TextStyle(fontSize: 16)),
            )),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Eliminar tarjeta'),
                  content: const Text(
                      '¿Estás seguro que deseas eliminar esta cuenta?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          context.read<UserBloc>().add(
                                UserEvent.removeAccount(widget.account),
                              );
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('Eliminar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(FontAwesomeIcons.ellipsisVertical),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: colorCards,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
                              transaction: transaction,
                              onPressDelete: () {
                                setState(() {
                                  context.read<UserBloc>().add(
                                        UserEvent.removeTransaction(
                                          transaction,
                                        ),
                                      );
                                });
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
                      ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Incomes',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          amountFormat.format(
                            accountRepository.getTotalIncomes(widget.account,
                                widget.user.transactions, widget.date),
                          ),
                          style: TextStyle(fontSize: 16, color: incomeColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Expenses',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          amountFormat.format(
                            accountRepository.getTotalExpenses(widget.account,
                                widget.user.transactions, widget.date),
                          ),
                          style: TextStyle(fontSize: 16, color: expenseColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Balance',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          amountFormat.format(
                            accountRepository.getBalance(
                                widget.account, transactions, widget.date),
                          ),
                          style: TextStyle(
                              fontSize: 16,
                              color: accountRepository.getBalance(
                                          widget.account,
                                          transactions,
                                          widget.date) >=
                                      0
                                  ? incomeColor
                                  : expenseColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
