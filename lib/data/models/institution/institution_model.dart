import 'package:hive/hive.dart';

part 'institution_model.g.dart';

@HiveType(typeId: 4)
class InstitutionModel extends HiveObject {
  InstitutionModel({
    required this.id,
    required this.name,
    required this.logo,
    required this.backgroundColor,
    this.logoColor,
    this.textColor,
    this.visaCardColor,
    this.masterCardColor,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String logo;
  @HiveField(3)
  int backgroundColor;
  @HiveField(4)
  int? logoColor;
  @HiveField(5)
  int? textColor;
  @HiveField(6)
  int? visaCardColor;
  @HiveField(7)
  int? masterCardColor;
}
