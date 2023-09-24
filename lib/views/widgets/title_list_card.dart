import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleListCard extends StatelessWidget {
  const TitleListCard({
    required this.title,
    required this.widget,
    required this.onTap,
    super.key,
  });

  final String title;
  final Widget widget;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  height: 20,
                  width: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () => onTap(),
                    child: const FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
