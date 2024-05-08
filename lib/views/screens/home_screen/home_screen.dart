import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/screens/home_screen/widgets/widgets.dart';
import 'package:wallet_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.user,
    super.key,
  });

  final UserModel user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  final TextEditingController searchController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: walletAppTheme.scaffoldBackgroundColor,
      bottomNavigationBar: _buildBottomNavBar(),
      floatingActionButton: _buildDialButton(context),
      appBar: _currentIndex == 2 ? _searchBar() : _buildAppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          WalletScreen(
            user: widget.user,
            date: _selectedDate,
          ),
          TransactionsScreen(
            date: _selectedDate,
            user: widget.user,
          ),
          SearchScreen(
            user: widget.user,
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: walletAppTheme.scaffoldBackgroundColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: walletAppTheme.scaffoldBackgroundColor,
              elevation: 0,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              setState(() {
                _selectedDate = _selectedDate.subtract(
                  const Duration(
                    days: 30,
                    hours: 23,
                    minutes: 59,
                    seconds: 59,
                  ),
                );
              });
            },
            child: const Icon(
              FontAwesomeIcons.chevronLeft,
              size: 12,
              color: Colors.grey,
            ),
          ),
          Text(
            _selectedDate.year == DateTime.now().year
                ? DateFormat('MMMM').format(_selectedDate)
                : DateFormat('MMMM yyyy').format(_selectedDate),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: walletAppTheme.scaffoldBackgroundColor,
              elevation: 0,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              setState(() {
                _selectedDate = _selectedDate.add(
                  const Duration(days: 30),
                );
              });
            },
            child: const Icon(
              FontAwesomeIcons.chevronRight,
              size: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  AppBar _searchBar() {
    return AppBar(
      title: Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        child: SearchBar(
          hintText: 'Search',
          controller: searchController,
          onChanged: (value) {
            context.read<SearchBarBloc>().add(
                  SearchBarSearchEvent(value),
                );
          },
        ),
      ),
    );
  }

  BottomNavBar _buildBottomNavBar() {
    return BottomNavBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
      },
    );
  }

  SpeedDial _buildDialButton(BuildContext context) {
    return SpeedDial(
      overlayColor: Colors.black.withOpacity(0.5),
      backgroundColor: accentColor,
      activeIcon: Icons.close,
      spacing: 3,
      direction: SpeedDialDirection.left,
      children: [
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
          backgroundColor: incomeColor,
          onTap: () {
            if (widget.user.accounts.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'You need to add an account first',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            Navigator.of(context).push(
              MaterialPageRoute<AddTransactionScreen>(
                builder: (_) => AddTransactionScreen.income(
                  selectedAccount: widget.user.accounts.first,
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
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.minus,
            color: Colors.white,
          ),
          backgroundColor: expenseColor,
          onTap: () {
            if (widget.user.accounts.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'You need to add an account first',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            Navigator.of(context).push(
              MaterialPageRoute<AddTransactionScreen>(
                builder: (_) => AddTransactionScreen.expense(
                  selectedAccount: widget.user.accounts.first,
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
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.arrowRightArrowLeft,
            color: Colors.white,
          ),
          backgroundColor: transferColor,
          onTap: () {
            if (widget.user.accounts.length <= 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'You need to have 2 accounts first',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            Navigator.of(context).push(
              MaterialPageRoute<AddTransferScreen>(
                builder: (_) => AddTransferScreen(
                  user: widget.user,
                  onPressed: (
                    fromSelectedAccount,
                    fromAccount,
                    toSelectedAccount,
                    toAccount,
                  ) {
                    setState(() {
                      context.read<AccountBloc>().add(
                            AccountEvent.addTransaction(
                              fromSelectedAccount,
                              fromAccount,
                            ),
                          );
                      context.read<AccountBloc>().add(
                            AccountEvent.addTransaction(
                              toSelectedAccount,
                              toAccount,
                            ),
                          );
                    });
                  },
                ),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.creditCard,
            color: Colors.white,
          ),
          backgroundColor: expenseColor,
          onTap: () {
            if (widget.user.creditCards.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'You need to add a credit card first',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            Navigator.of(context).push(
              MaterialPageRoute<AddCreditCardExpenseScreen>(
                builder: (_) => AddCreditCardExpenseScreen(
                  selectedCreditCard: widget.user.creditCards.first,
                  user: widget.user,
                  onPressed: (creditCard, transaction) {
                    setState(() {
                      context.read<CreditCardBloc>().add(
                            CreditCardEvent.addTransaction(
                              creditCard,
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
      ],
      child: const FaIcon(
        FontAwesomeIcons.plus,
      ),
    );
  }
}
