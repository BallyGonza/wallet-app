import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'user_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class UserModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  List<AccountModel> accounts;
  @HiveField(2)
  List<TransactionModel> transactions;
  @HiveField(3)
  List<CategoryModel> incomeCategories;
  @HiveField(4)
  List<CategoryModel> expenseCategories;

  UserModel({
    required this.id,
    required this.accounts,
    required this.transactions,
    required this.incomeCategories,
    required this.expenseCategories,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
