import 'package:hive/hive.dart';

part 'institution_model.g.dart';

@HiveType(typeId: 4)
class InstitutionModel extends HiveObject {
  InstitutionModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.logo,
    required this.backgroundColor,
    required this.logoColor,
    this.textColor,
    this.visaCardColor,
    this.masterCardColor,
    this.americianExpressColor,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String icon;
  @HiveField(3)
  String logo;
  @HiveField(4)
  int backgroundColor;
  @HiveField(5)
  int logoColor;
  @HiveField(6)
  int? textColor;
  @HiveField(7)
  int? visaCardColor;
  @HiveField(8)
  int? masterCardColor;
  @HiveField(9)
  int? americianExpressColor;
}
