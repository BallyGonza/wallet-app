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
    return NavigationBar(
      selectedIndex: widget.currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          widget.onTap(index);
        });
      },
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: accentColor,
      backgroundColor: secondaryColor,
      destinations: const [
        NavigationDestination(
          icon: FaIcon(
            FontAwesomeIcons.wallet,
            size: 20,
          ),
          label: 'Wallet',
        ),
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.list, size: 20),
          label: 'Transactions',
        ),
        NavigationDestination(
          icon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 20),
          label: 'Search',
        ),
      ],
    );
  }
}
