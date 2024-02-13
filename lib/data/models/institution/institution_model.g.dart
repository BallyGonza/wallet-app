// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstitutionModelAdapter extends TypeAdapter<InstitutionModel> {
  @override
  final int typeId = 4;

  @override
  InstitutionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstitutionModel(
      id: fields[0] as int,
      name: fields[1] as String,
      icon: fields[2] as String,
      logo: fields[3] as String,
      backgroundColor: fields[4] as int,
      logoColor: fields[5] as int,
      textColor: fields[6] as int?,
      visaCardColor: fields[7] as int?,
      masterCardColor: fields[8] as int?,
      americianExpressColor: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, InstitutionModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.logo)
      ..writeByte(4)
      ..write(obj.backgroundColor)
      ..writeByte(5)
      ..write(obj.logoColor)
      ..writeByte(6)
      ..write(obj.textColor)
      ..writeByte(7)
      ..write(obj.visaCardColor)
      ..writeByte(8)
      ..write(obj.masterCardColor)
      ..writeByte(9)
      ..write(obj.americianExpressColor);
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
