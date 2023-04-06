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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: widget.onCategoryTap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(widget.category.color),
                          child: Image.asset(
                            widget.category.image,
                            color: widget.category.iconColor == null
                                ? null
                                : Color(widget.category.iconColor!),
                            width: 24,
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
                  widget.category.subCategories.isEmpty
                      ? const SizedBox()
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                              isExpanded
                                  ? _controller.forward()
                                  : _controller.reverse();
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
              axisAlignment: 0.0,
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
                            onTap: () {
                              widget.onSubCategoryTap(index);
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(subCategory.color),
                                child: Image.asset(
                                  subCategory.image,
                                  color: subCategory.iconColor == null
                                      ? null
                                      : Color(subCategory.iconColor!),
                                  width: 24,
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
