import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 7)
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String password,
    @HiveField(3) required String image,
    @HiveField(4) required List<AccountModel> accounts,
    @HiveField(5) required List<CategoryModel> categories,
    @HiveField(6) required List<CreditCardModel> creditCards,
    @HiveField(7) required List<TagModel> tags,
    @HiveField(8) required List<TransactionModel> transactions,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromHive(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
