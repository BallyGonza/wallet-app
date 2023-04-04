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
  List<CategoryModel> categories;

  UserModel({
    required this.id,
    required this.accounts,
    required this.categories,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
