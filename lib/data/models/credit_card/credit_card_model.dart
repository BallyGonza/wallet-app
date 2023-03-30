import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_model.freezed.dart';
part 'credit_card_model.g.dart';

@freezed
@HiveType(typeId: 3)
abstract class CreditCardModel with _$CreditCardModel {
  const factory CreditCardModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String image,
    @HiveField(3) required int color,
    @HiveField(4) required String number,
    @HiveField(5) required String closingDate,
    @HiveField(6) required String expirationDate,
    @HiveField(7) required String cvv,
    @HiveField(8) required String holderName,
    @HiveField(9) required InstitutionModel institution,
    @HiveField(10) required List<TransactionModel> transactions,
    @HiveField(11) required double balance,
  }) = _CreditCardModel;

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  factory CreditCardModel.fromHive(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);
}
