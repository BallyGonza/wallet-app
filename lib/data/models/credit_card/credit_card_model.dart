import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class CreditCardModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  int color;
  @HiveField(4)
  String number;
  @HiveField(5)
  String closingDate;
  @HiveField(6)
  String expirationDate;
  @HiveField(7)
  String cvv;
  @HiveField(8)
  String holderName;
  @HiveField(9)
  InstitutionModel institution;
  @HiveField(10)
  List<TransactionModel> transactions;
  @HiveField(11)
  double balance;

  CreditCardModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
    required this.number,
    required this.closingDate,
    required this.expirationDate,
    required this.cvv,
    required this.holderName,
    required this.institution,
    required this.transactions,
    required this.balance,
  });

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardModelToJson(this);
}
