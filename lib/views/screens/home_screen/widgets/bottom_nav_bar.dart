import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    required this.onTap,
    required this.currentIndex,
    super.key,
  });

  final void Function(int) onTap;
  final int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1,
      currentIndex: widget.currentIndex,
      onTap: (index) {
        setState(() {
          widget.onTap(index);
        });
      },
      backgroundColor: colorCards,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.wallet,
            size: 20,
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.list, size: 20),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 20),
          label: 'Search',
        ),
      ],
    );
  }
}
