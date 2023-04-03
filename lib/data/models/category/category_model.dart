import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class CategoryModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  int color;
  @HiveField(4)
  List<CategoryModel>? subCategories;
  @HiveField(5)
  bool isIncome;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
    this.subCategories,
    required this.isIncome,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
