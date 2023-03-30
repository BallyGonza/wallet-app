import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
@HiveType(typeId: 6)
abstract class TagModel with _$TagModel {
  const factory TagModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String image,
    @HiveField(3) required int color,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);

  factory TagModel.fromHive(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
