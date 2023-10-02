// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_app/data/data.dart';

class CategoryListItem extends StatefulWidget {
  const CategoryListItem({
    required this.onCategoryTap,
    required this.onSubCategoryTap,
    required this.category,
    super.key,
  });

  final CategoryModel category;
  final VoidCallback onCategoryTap;
  final Function onSubCategoryTap;

  @override
  State<CategoryListItem> createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;

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
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: widget.onCategoryTap,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              Color(widget.category.backgroundColor),
                          child: Image(
                            image: AssetImage(
                              widget.category.icon,
                            ),
                            height: 25,
                            width: 25,
                            color: widget.category.iconColor == null
                                ? null
                                : Color(widget.category.iconColor!),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            widget.category.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  if (widget.category.subCategories.isEmpty)
                    const SizedBox()
                  else
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                          isExpanded
                              ? _controller.forward()
                              : _controller.reverse();
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: FaIcon(
                          isExpanded
                              ? FontAwesomeIcons.angleDown
                              : FontAwesomeIcons.angleRight,
                          color: Colors.grey,
                          size: 16,
                        ),
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
                    SizedBox(
                      height: widget.category.subCategories.length * 60.0,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.category.subCategories.length,
                        itemBuilder: (context, index) {
                          final subCategory =
                              widget.category.subCategories[index];
                          return InkWell(
                            enableFeedback: false,
                            onTap: () {
                              widget.onSubCategoryTap(index);
                            },
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
                            ),
                          );
                        },
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
