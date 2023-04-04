import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'account_type_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class AccountTypeModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  int color;

  AccountTypeModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
  });

  factory AccountTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountTypeModelToJson(this);
}
