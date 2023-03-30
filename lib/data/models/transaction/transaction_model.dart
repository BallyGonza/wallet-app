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
    @HiveField(1) required String name,
    @HiveField(2) required String description,
    @HiveField(3) required double amount,
    @HiveField(4) required DateTime date,
    @HiveField(5) required bool isIncome,
    @HiveField(6) required bool isExpense,
    @HiveField(7) required bool isTransfer,
    @HiveField(8) required bool isRecurrent,
    @HiveField(9) required bool isReceived,
    @HiveField(10) required CategoryModel category,
    @HiveField(11) required List<TagModel> tags,
    @HiveField(12) required AccountModel account,
    @HiveField(13) required String attachment,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  factory TransactionModel.fromHive(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
