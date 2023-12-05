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
      logo: fields[2] as String,
      backgroundColor: fields[3] as int,
      logoColor: fields[4] as int,
      textColor: fields[5] as int?,
      visaCardColor: fields[6] as int?,
      masterCardColor: fields[7] as int?,
      americianExpressColor: fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, InstitutionModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.logo)
      ..writeByte(3)
      ..write(obj.backgroundColor)
      ..writeByte(4)
      ..write(obj.logoColor)
      ..writeByte(5)
      ..write(obj.textColor)
      ..writeByte(6)
      ..write(obj.visaCardColor)
      ..writeByte(7)
      ..write(obj.masterCardColor)
      ..writeByte(8)
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
