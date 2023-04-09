import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
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

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.backgroundColor,
    this.iconColor,
    required this.subCategories,
    required this.isIncome,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
