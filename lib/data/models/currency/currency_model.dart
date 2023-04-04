import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'currency_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class CurrencyModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String symbol;
  @HiveField(3)
  String code;
  @HiveField(4)
  String flag;

  CurrencyModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.code,
    required this.flag,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}
