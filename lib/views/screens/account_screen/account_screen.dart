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
      appBar: _AppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            _listOfTransactions(context),
            _resume(context),
          ],
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
            accountRepository.getTotalIncomes(
                widget.account, widget.user.transactions, widget.date),
            incomeColor!.value,
          ),
          _resumeItem(
            'Gasto',
            accountRepository.getTotalExpenses(
                widget.account, widget.user.transactions, widget.date),
            expenseColor!.value,
          ),
          _resumeItem(
            'Saldo',
            accountRepository.getBalance(
                widget.account, widget.user.transactions, widget.date),
            accountRepository.getBalance(
                        widget.account, widget.user.transactions, widget.date) >
                    0
                ? incomeColor!.value
                : expenseColor!.value,
          ),
        ],
      ),
    );
  }

  Widget _resumeItem(String title, double amount, int color) {
    return SizedBox(
      height: 30,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        trailing: Text(
          widget.account.name == 'Ahorros'
              ? dolarAmountFormat.format(amount)
              : amountFormat.format(amount),
          style: TextStyle(fontSize: 16, color: Color(color)),
        ),
      ),
    );
  }

  AppBar _AppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
          decoration: BoxDecoration(
            color: Color(widget.account.institution.logoColor!),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child:
                Text(widget.account.name, style: const TextStyle(fontSize: 16)),
          )),
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('Eliminar cuenta'),
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
    );
  }
}
