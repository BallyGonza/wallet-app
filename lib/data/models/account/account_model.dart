import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'account_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class AccountModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String description;
  @HiveField(3)
  InstitutionModel institution;
  @HiveField(4)
  AccountTypeModel type;
  @HiveField(5)
  int color;
  @HiveField(6)
  double balance;
  @HiveField(7)
  bool includeInTotal;
  @HiveField(8)
  bool isHidden;
  @HiveField(9)
  List<TransactionModel> transactions;
  @HiveField(10)
  CurrencyModel currency;

  AccountModel({
    required this.id,
    required this.name,
    required this.description,
    required this.institution,
    required this.type,
    required this.color,
    required this.balance,
    required this.includeInTotal,
    required this.isHidden,
    required this.transactions,
    required this.currency,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
