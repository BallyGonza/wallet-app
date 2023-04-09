import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 9)
class CreditCardModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  InstitutionModel institution;
  @HiveField(3)
  InstitutionModel cardType;
  @HiveField(4)
  double limit;
  @HiveField(5)
  List<CreditCardTransactionModel> transactions = [];
  @HiveField(6)
  DateTime dueDate;
  @HiveField(7)
  String number;

  CreditCardModel({
    required this.id,
    required this.name,
    required this.institution,
    required this.cardType,
    required this.limit,
    required this.transactions,
    required this.dueDate,
    required this.number,
  });

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardModelToJson(this);
}
