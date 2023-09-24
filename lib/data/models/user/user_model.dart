import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'user_model.g.dart';

@HiveType(typeId: 6)
class UserModel extends HiveObject {
  UserModel({
    required this.id,
    required this.accounts,
    required this.incomeCategories,
    required this.expenseCategories,
    required this.creditCards,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  List<AccountModel> accounts;
  @HiveField(2)
  List<CategoryModel> incomeCategories;
  @HiveField(3)
  List<CategoryModel> expenseCategories;
  @HiveField(4)
  List<CreditCardModel> creditCards;
}
