import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.backgroundColor,
    required this.subCategories,
    required this.isIncome,
    this.iconColor,
  });
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String icon;
  @HiveField(3)
  int backgroundColor;
  @HiveField(4)
  int? iconColor;
  @HiveField(5)
  List<CategoryModel> subCategories;
  @HiveField(6)
  bool isIncome;
}
