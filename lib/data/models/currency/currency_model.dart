import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
@HiveType(typeId: 4)
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String symbol,
    @HiveField(3) required String code,
    @HiveField(4) required String flag,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
