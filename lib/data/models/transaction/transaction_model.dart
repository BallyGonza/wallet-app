import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 7)
class TransactionModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String description;
  @HiveField(2)
  double amount;
  @HiveField(3)
  DateTime date;
  @HiveField(4)
  bool isIncome;
  @HiveField(5)
  bool isRecurrent;
  @HiveField(6)
  CategoryModel category;
  @HiveField(7)
  List<TagModel> tags;
  @HiveField(10)
  AccountModel account;
  @HiveField(11)
  String attachment;

  TransactionModel({
    required this.id,
    required this.description,
    required this.amount,
    required this.date,
    required this.isIncome,
    required this.isRecurrent,
    required this.category,
    required this.tags,
    required this.account,
    required this.attachment,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
