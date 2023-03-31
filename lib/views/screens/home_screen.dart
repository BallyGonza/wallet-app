import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final _userRepository = UserRepository();
  late double _totalBalance;
  late double _totalIncome;
  late double _totalExpense;

  @override
  void initState() {
    _totalBalance = _userRepository.getTotalBalance(widget.user.accounts);
    _totalIncome = _userRepository.getTotalIncome(widget.user.accounts);
    _totalExpense = _userRepository.getTotalExpense(widget.user.accounts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: walletAppTheme.scaffoldBackgroundColor,
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: AddFloatingActionButton(
        onAddPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<UserBloc>(),
                child: AddTransactionScreen(
                  onSaved: (
                    String description,
                    double amount,
                    AccountModel account,
                    CategoryModel category,
                    String date,
                    bool isIncome,
                    List<TagModel> tags,
                  ) {
                    setState(() {
                      context.read<UserBloc>().add(
                            UserEvent.addTransaction(
                              widget.user,
                              TransactionModel(
                                id: '0',
                                description: description,
                                amount: amount,
                                category: category,
                                account: account,
                                date: date,
                                isIncome: isIncome,
                                attachment: '',
                                tags: tags,
                                isRecurrent: false,
                              ),
                            ),
                          );
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            AccountsBalance(
              value: _totalBalance,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummariceCard.icome(
                  value: _totalIncome,
                ),
                SummariceCard.expense(
                  value: _totalExpense,
                ),
              ],
            ),
            const SizedBox(height: 16),
            AccountsList(
              accounts: user.accounts,
            ),
          ],
        ),
      ),
    );
  }
}
