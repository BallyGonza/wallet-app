// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstitutionModelAdapter extends TypeAdapter<InstitutionModel> {
  @override
  final int typeId = 5;

  @override
  InstitutionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstitutionModel(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String,
      color: fields[3] as int,
      secondaryColor: fields[4] as int,
      textColor: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, InstitutionModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.secondaryColor)
      ..writeByte(5)
      ..write(obj.textColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstitutionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstitutionModel _$InstitutionModelFromJson(Map<String, dynamic> json) =>
    InstitutionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      color: json['color'] as int,
      secondaryColor: json['secondaryColor'] as int,
      textColor: json['textColor'] as int,
    );

Map<String, dynamic> _$InstitutionModelToJson(InstitutionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'color': instance.color,
      'secondaryColor': instance.secondaryColor,
      'textColor': instance.textColor,
    };
