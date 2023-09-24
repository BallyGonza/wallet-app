import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'transaction_model.g.dart';

@HiveType(typeId: 5)
class TransactionModel extends HiveObject {
  TransactionModel({
    required this.id,
    required this.note,
    required this.amount,
    required this.date,
    required this.category,
  });

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

  TransactionModel copyWith({
    int? id,
    String? note,
    double? amount,
    DateTime? date,
    CategoryModel? category,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      note: note ?? this.note,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      category: category ?? this.category,
    );
  }
}
