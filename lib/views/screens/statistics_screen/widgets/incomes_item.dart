import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:wallet_app/data/data.dart';

class IncomeItem extends StatefulWidget {
  const IncomeItem({
    required this.user,
    required this.income,
    required this.date,
    super.key,
  });

  final UserModel user;
  final DateTime date;
  final CategoryModel income;

  @override
  State<IncomeItem> createState() => _IncomeItemState();
}

class _IncomeItemState extends State<IncomeItem> with TickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;
  late UserRepository userRepository;
  late double amount;

  @override
  void initState() {
    userRepository = context.read<UserRepository>();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
              isExpanded ? _controller.forward() : _controller.reverse();
            });
          },
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Color(widget.income.backgroundColor),
            child: Image(
              image: AssetImage(
                widget.income.icon,
              ),
              height: 25,
              width: 25,
              color: income.iconColor == null
                  ? null
                  : Color(widget.income.iconColor!),
            ),
          ),
          title: Text(
            widget.income.name,
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
                  arg.format(
                    userRepository.getTotalByCategoryRecursive(
                      widget.user,
                      widget.date,
                      widget.income,
                    ),
                  ),
                  style: TextStyle(
                    color: userRepository.getTotalByCategoryRecursive(
                              widget.user,
                              widget.date,
                              widget.income,
                            ) ==
                            0
                        ? Colors.grey
                        : incomeColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                if (widget.income.subCategories.isEmpty)
                  const SizedBox(width: 10)
                else
                  SizedBox(
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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  for (final subCategory in widget.income.subCategories)
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 8,
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(subCategory.backgroundColor),
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
                            arg.format(
                              userRepository.getTotalByCategory(
                                widget.user,
                                widget.date,
                                subCategory,
                              ),
                            ),
                            style: TextStyle(
                              color: userRepository.getTotalByCategory(
                                        widget.user,
                                        widget.date,
                                        subCategory,
                                      ) ==
                                      0
                                  ? Colors.grey
                                  : incomeColor,
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
    );
  }
}
