import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          label: 'Summary',
        ),
        // BottomNavigationBarItem(
        //   icon: FaIcon(FontAwesomeIcons.gear),
        //   label: 'Settings',
        // ),
      ],
    );
  }
}
