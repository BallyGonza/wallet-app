import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'institution_model.freezed.dart';
part 'institution_model.g.dart';

@freezed
@HiveType(typeId: 4)
abstract class InstitutionModel with _$InstitutionModel {
  const factory InstitutionModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String image,
    @HiveField(3) required int color,
  }) = _InstitutionModel;

  factory InstitutionModel.fromJson(Map<String, dynamic> json) =>
      _$InstitutionModelFromJson(json);

  factory InstitutionModel.fromHive(Map<String, dynamic> json) =>
      _$InstitutionModelFromJson(json);
}
