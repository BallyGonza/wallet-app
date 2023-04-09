// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryModelAdapter extends TypeAdapter<CategoryModel> {
  @override
  final int typeId = 1;

  @override
  CategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryModel(
      id: fields[0] as int,
      name: fields[1] as String,
      icon: fields[2] as String,
      backgroundColor: fields[3] as int,
      iconColor: fields[4] as int?,
      subCategories: (fields[5] as List).cast<CategoryModel>(),
      isIncome: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.backgroundColor)
      ..writeByte(4)
      ..write(obj.iconColor)
      ..writeByte(5)
      ..write(obj.subCategories)
      ..writeByte(6)
      ..write(obj.isIncome);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      icon: json['icon'] as String,
      backgroundColor: json['backgroundColor'] as int,
      iconColor: json['iconColor'] as int?,
      subCategories: (json['subCategories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isIncome: json['isIncome'] as bool,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'backgroundColor': instance.backgroundColor,
      'iconColor': instance.iconColor,
      'subCategories': instance.subCategories,
      'isIncome': instance.isIncome,
    };
