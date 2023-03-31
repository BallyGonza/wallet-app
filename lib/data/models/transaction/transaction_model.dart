import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
@HiveType(typeId: 7)
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @HiveField(0) required String id,
    @HiveField(1) required String description,
    @HiveField(2) required double amount,
    @HiveField(3) required String date,
    @HiveField(4) required bool isIncome,
    @HiveField(5) required bool isRecurrent,
    @HiveField(6) required CategoryModel category,
    @HiveField(7) required List<TagModel> tags,
    @HiveField(10) required AccountModel account,
    @HiveField(11) required String attachment,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  factory TransactionModel.fromHive(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
