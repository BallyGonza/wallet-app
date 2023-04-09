import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import 'package:wallet_app/blocs/blocs.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/theme.dart';
import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.user, super.key});

  final UserModel user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  UserRepository usersRepository = UserRepository();
  late Box<UserModel> box;
  late UserModel user;
  DateTime selectedDate = DateTime.now();
  int currentIndex = 0;

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
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButton: _dialButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: currentIndex == 0
            ? colorCards
            : walletAppTheme.scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedDate = selectedDate.subtract(
                    const Duration(days: 30),
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
              selectedDate.year == DateTime.now().year
                  ? DateFormat('MMMM').format(selectedDate)
                  : DateFormat('MMMM yyyy').format(selectedDate),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedDate = selectedDate.add(
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
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          AccountsScreen(user: user, date: selectedDate),
          TransactionsScreen(user: user, date: selectedDate),
        ],
      ),
    );
  }

  BottomNavBar _bottomNavBar() {
    return BottomNavBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
      },
    );
  }

  SpeedDial _dialButton(BuildContext context) {
    return SpeedDial(
      elevation: 0,
      overlayOpacity: 0,
      backgroundColor: primaryColor,
      activeIcon: Icons.close,
      spacing: 3,
      direction: SpeedDialDirection.up,
      children: [
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
          backgroundColor: incomeColor,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AddTransactionScreen.income(
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
        ),
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.minus,
            color: Colors.white,
          ),
          backgroundColor: expenseColor,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AddTransactionScreen.expense(
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
        ),
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.arrowRightArrowLeft,
            color: Colors.white,
          ),
          backgroundColor: transferColor,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AddTransferScreen(
                  onPressed: (toAccount, fromAccount) {
                    setState(() {
                      context.read<UserBloc>().add(
                            UserEvent.addTransaction(
                              toAccount,
                            ),
                          );
                      context.read<UserBloc>().add(
                            UserEvent.addTransaction(
                              fromAccount,
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
        color: Colors.white,
      ),
    );
  }
}
