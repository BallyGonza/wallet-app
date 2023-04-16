import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'credit_card_transaction_model.g.dart';

@HiveType(typeId: 3)
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
  CreditCardModel creditCard;
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
    required this.creditCard,
    required this.isReccurent,
    required this.cuotas,
  });

  CreditCardTransactionModel copyWith({required double amount}) {
    return CreditCardTransactionModel(
      id: id,
      note: note,
      amount: amount,
      date: date,
      category: category,
      creditCard: creditCard,
      isReccurent: isReccurent,
      cuotas: cuotas,
    );
  }
}
