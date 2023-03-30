import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'account_type_model.freezed.dart';
part 'account_type_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class AccountTypeModel with _$AccountTypeModel {
  const factory AccountTypeModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String image,
    @HiveField(3) required int color,
  }) = _AccountTypeModel;

  factory AccountTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeModelFromJson(json);

  factory AccountTypeModel.fromHive(Map<String, dynamic> json) =>
      _$AccountTypeModelFromJson(json);
}
