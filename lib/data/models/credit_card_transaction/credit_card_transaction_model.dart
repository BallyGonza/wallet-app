import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_transaction_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 10)
class CreditCardTransactionModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String note;
  @HiveField(2)
  double amount;
  @HiveField(3)
  DateTime date;
  @HiveField(4)
  CategoryModel category;
  @HiveField(5)
  AccountModel account;
  @HiveField(6)
  bool isReccurent;
  @HiveField(7)
  int cuotas;

  CreditCardTransactionModel({
    required this.id,
    required this.note,
    required this.amount,
    required this.date,
    required this.category,
    required this.account,
    required this.isReccurent,
    required this.cuotas,
  });

  factory CreditCardTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardTransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardTransactionModelToJson(this);
}
