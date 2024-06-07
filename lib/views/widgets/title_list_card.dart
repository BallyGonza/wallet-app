import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleListCard extends StatelessWidget {
  const TitleListCard({
    required this.title,
    required this.child,
    required this.onTap,
    super.key,
  });

  final String title;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: onTap,
                icon: const FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}
