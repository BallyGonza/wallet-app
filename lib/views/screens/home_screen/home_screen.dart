import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
      body: PageView(
        controller: _pageController,
        children: [
          AccountsScreen(user: user),
          TransactionsScreen(user: user),
        ],
      ),
    );
  }

  BottomNavBar _bottomNavBar() {
    return BottomNavBar(
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
      backgroundColor: Colors.indigo[300],
      activeIcon: Icons.close,
      spacing: 3,
      direction: SpeedDialDirection.left,
      children: [
        SpeedDialChild(
          child: const FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
          backgroundColor: Colors.green[300],
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
          backgroundColor: Colors.red[300],
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
      ],
      child: const FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
