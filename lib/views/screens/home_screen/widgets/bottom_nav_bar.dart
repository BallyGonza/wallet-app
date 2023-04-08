import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {required this.onTap, required this.currentIndex, super.key});

  final Function(int) onTap;
  final int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: (index) {
        setState(() {
          widget.onTap(index);
        });
      },
      backgroundColor: const Color(0xff1E1E1E),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Color(0xff1E1E1E),
          icon: FaIcon(
            FontAwesomeIcons.wallet,
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.list),
          label: 'Transactions',
        ),
      ],
    );
  }
}
