import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/data/data.dart';
import 'package:wallet_app/views/views.dart';

import 'widgets/widgets.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  DateTime _selectedMonth = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedMonth = _selectedMonth.subtract(
                          const Duration(days: 30),
                        );
                      });
                    },
                    child: const Icon(
                      FontAwesomeIcons.chevronLeft,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    DateFormat('MM/yy').format(_selectedMonth),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedMonth = _selectedMonth.add(
                          const Duration(days: 30),
                        );
                      });
                    },
                    child: const Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            AccountsBalance(
              transactions: widget.user.transactions,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummaryCard.income(user: widget.user),
                SummaryCard.expense(user: widget.user),
              ],
            ),
            const SizedBox(height: 16),
            HomeCard(
              title: 'Accounts',
              widget: AccountsList(user: widget.user),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
