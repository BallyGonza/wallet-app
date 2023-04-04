import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'account_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class AccountModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int color;
  @HiveField(3)
  InstitutionModel institution;

  AccountModel({
    required this.id,
    required this.name,
    required this.institution,
    required this.color,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
