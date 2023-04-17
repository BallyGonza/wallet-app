import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_model.g.dart';

@HiveType(typeId: 2)
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
  String number;
  @HiveField(5)
  List<CreditCardTransactionModel> expenses;

  CreditCardModel({
    required this.id,
    required this.name,
    required this.institution,
    required this.cardType,
    required this.number,
    required this.expenses,
  });

  void update(CreditCardModel creditCard) {
    id = creditCard.id;
    name = creditCard.name;
    institution = creditCard.institution;
    cardType = creditCard.cardType;
    number = creditCard.number;
    expenses = creditCard.expenses;
  }
}
