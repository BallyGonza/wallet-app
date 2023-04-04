import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 7)
class TransactionModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String note;
  @HiveField(2)
  double amount;
  @HiveField(3)
  DateTime date;
  @HiveField(4)
  bool isIncome;
  @HiveField(6)
  CategoryModel category;
  @HiveField(7)
  AccountModel account;

  TransactionModel({
    required this.id,
    required this.note,
    required this.amount,
    required this.date,
    required this.isIncome,
    required this.category,
    required this.account,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
