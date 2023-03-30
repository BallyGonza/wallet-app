import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String description,
    @HiveField(3) InstitutionModel? institution,
    @HiveField(4) required AccountTypeModel type,
    @HiveField(5) required int color,
    @HiveField(6) required double balance,
    @HiveField(7) required bool includeInTotal,
    @HiveField(8) required bool isHidden,
    @HiveField(9) required List<TransactionModel> registers,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  factory AccountModel.fromHive(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
