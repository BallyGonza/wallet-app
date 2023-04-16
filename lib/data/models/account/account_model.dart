import 'package:hive/hive.dart';
import 'package:wallet_app/data/data.dart';

part 'account_model.g.dart';

@HiveType(typeId: 0)
class AccountModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  InstitutionModel institution;

  AccountModel({
    required this.id,
    required this.name,
    required this.institution,
  });
}
