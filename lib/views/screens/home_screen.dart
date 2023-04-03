import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.user,
    required this.transactions,
    required this.accounts,
  });

  final UserModel user;
  final List<TransactionModel> transactions;
  final List<AccountModel> accounts;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Box<UserModel>? box;

  @override
  void initState() {
    box = Hive.box<UserModel>('users_box');
    box!.get(widget.user.id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransactionBloc(
        box!.getAt(widget.user.id)!,
      ),
      child: Scaffold(
        backgroundColor: walletAppTheme.scaffoldBackgroundColor,
        bottomNavigationBar: const BottomNavBar(),
        floatingActionButton: AddFloatingActionButton(
          onAddPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => TransactionBloc(
                    box!.getAt(widget.user.id)!,
                  ),
                  child: const AddTransactionScreen(),
                ),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AccountsBalance(
                  accounts: [],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SummaryCard.income(amount: 0),
                    SummaryCard.expense(amount: 0),
                  ],
                ),
                const SizedBox(height: 16),
                AccountsListView(accounts: widget.accounts),
                TransactionsList(transactions: widget.transactions),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
