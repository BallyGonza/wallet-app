import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'account_model.g.dart';

@HiveType(typeId: 0)
class AccountModel extends HiveObject {
  AccountModel({
    required this.id,
    required this.name,
    required this.institution,
    this.description,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  InstitutionModel institution;
  @HiveField(3)
  String? description;
  @HiveField(4)
  List<TransactionModel> transactions = [];

  AccountModel copyWith({
    int? id,
    String? name,
    InstitutionModel? institution,
    String? description,
    List<TransactionModel>? transactions,
  }) {
    return AccountModel(
      id: id ?? this.id,
      name: name ?? this.name,
      institution: institution ?? this.institution,
      description: description ?? this.description,
    )..transactions = transactions ?? this.transactions;
  }
}
