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
  String name;
  @HiveField(2)
  String password;
  @HiveField(3)
  String image;
  @HiveField(4)
  List<AccountModel> accounts;
  @HiveField(5)
  List<CategoryModel> categories;
  @HiveField(6)
  List<CreditCardModel> creditCards;
  @HiveField(7)
  List<TagModel> tags;
  @HiveField(8)
  List<TransactionModel> transactions;

  UserModel({
    required this.id,
    required this.name,
    required this.password,
    required this.image,
    required this.accounts,
    required this.categories,
    required this.creditCards,
    required this.tags,
    required this.transactions,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
