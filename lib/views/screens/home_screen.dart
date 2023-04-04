import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';

import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.user, super.key});

  final UserModel user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserModel user;
  late Box<UserModel> box;
  UserRepository usersRepository = UserRepository();

  @override
  void initState() {
    super.initState();

    box = Hive.box<UserModel>('users_box');
    box.get(widget.user.id) ?? box.put(widget.user.id, widget.user);
    user = box.get(widget.user.id)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: walletAppTheme.scaffoldBackgroundColor,
        bottomNavigationBar: const BottomNavBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AccountsBalance(transactions: user.transactions),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SummaryCard.income(amount: usersRepository.getIncome(user)),
                    SummaryCard.expense(
                        amount: usersRepository.getExpense(user)),
                  ],
                ),
                const SizedBox(height: 16),
                // AccountsList(user: user),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              'Accounts',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(
                                //     builder: (_) => AddAccountScreen(
                                //       onPressed: (account) {
                                //         setState(() {
                                //           context.read<AccountBloc>().add(
                                //                 AccountEvent.addAccount(
                                //                     account),
                                //               );
                                //         });
                                //       },
                                //     ),
                                //   ),
                                // );
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
                        height: user.accounts.length * 73.0,
                        decoration: const BoxDecoration(
                          color: colorCards,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: user.accounts.isEmpty
                            ? const Center(
                                child: Text('No accounts yet'),
                              )
                            : ListView(
                                reverse: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: List.generate(
                                  user.accounts.length,
                                  (index) {
                                    final account = user.accounts[index];
                                    return ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor:
                                            Color(account.institution.color),
                                        radius: 18,
                                        child: Image.asset(
                                          account.institution.image,
                                          width: 24,
                                        ),
                                      ),
                                      title: Text(
                                        account.name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '\$ ${amountFormat.format(usersRepository.getAccountBalance(account, user.transactions))}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              color: usersRepository
                                                          .getAccountBalance(
                                                              account,
                                                              user.transactions) >=
                                                      0
                                                  ? Colors.green
                                                  : Colors.red,
                                            ),
                                      ),
                                      trailing: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                // TransactionsList(user: user),
                Padding(
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
                                          context.read<UserBloc>().add(
                                                UserEvent.addTransaction(
                                                  transaction,
                                                ),
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
                          height: user.transactions.length * 73.0,
                          decoration: const BoxDecoration(
                            color: colorCards,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: user.transactions.isEmpty
                              ? const Center(
                                  child: Text('No transactions yet'),
                                )
                              : ListView(
                                  reverse: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: List.generate(
                                    user.transactions.length,
                                    (index) {
                                      final transaction =
                                          user.transactions[index];
                                      return TransactionListItem(
                                        transaction: transaction,
                                      );
                                    },
                                  ),
                                )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
