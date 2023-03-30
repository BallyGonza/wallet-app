import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String image,
    @HiveField(3) required int color,
    @HiveField(4) List<CategoryModel>? subCategories,
    @HiveField(5) required bool isIncome,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  factory CategoryModel.fromHive(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
