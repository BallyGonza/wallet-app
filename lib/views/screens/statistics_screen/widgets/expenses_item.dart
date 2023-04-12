import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:wallet_app/data/data.dart';

class ExpenseItem extends StatefulWidget {
  const ExpenseItem({
    Key? key,
    required this.user,
    required this.expense,
    required this.date,
  }) : super(key: key);

  final UserModel user;
  final DateTime date;
  final CategoryModel expense;

  @override
  State<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;
  final UserRepository userRepository = UserRepository();

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                widget.expense.subCategories.isEmpty
                    ? isExpanded = false
                    : isExpanded = !isExpanded;
                isExpanded ? _controller.forward() : _controller.reverse();
              });
            },
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Color(widget.expense.backgroundColor),
              child: Image(
                image: AssetImage(
                  widget.expense.icon,
                ),
                height: 25,
                width: 25,
                color: widget.expense.iconColor == null
                    ? null
                    : Color(widget.expense.iconColor!),
              ),
            ),
            title: Text(
              widget.expense.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 100,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    amountFormat.format(
                      userRepository.getTotalByCategoryRecursive(
                          widget.user, widget.date, widget.expense),
                    ),
                    style: TextStyle(
                      color: expenseColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  widget.expense.subCategories.isEmpty
                      ? const SizedBox(width: 10)
                      : SizedBox(
                          width: 10,
                          child: FaIcon(
                            isExpanded
                                ? FontAwesomeIcons.angleDown
                                : FontAwesomeIcons.angleRight,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            child: SizeTransition(
              sizeFactor: _controller,
              axisAlignment: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    for (var subCategory in widget.expense.subCategories)
                      SizedBox(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  Color(subCategory.backgroundColor),
                              child: Image(
                                image: AssetImage(
                                  subCategory.icon,
                                ),
                                height: 25,
                                width: 25,
                                color: subCategory.iconColor == null
                                    ? null
                                    : Color(subCategory.iconColor!),
                              ),
                            ),
                            title: Text(
                              subCategory.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            trailing: Text(
                              amountFormat.format(
                                userRepository.getTotalByCategory(
                                    widget.user, widget.date, subCategory),
                              ),
                              style: TextStyle(
                                color: expenseColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
