import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'institution_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 5)
class InstitutionModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  int color;

  InstitutionModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
  });

  factory InstitutionModel.fromJson(Map<String, dynamic> json) =>
      _$InstitutionModelFromJson(json);

  Map<String, dynamic> toJson() => _$InstitutionModelToJson(this);
}
