// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountTypeModelAdapter extends TypeAdapter<AccountTypeModel> {
  @override
  final int typeId = 1;

  @override
  AccountTypeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountTypeModel(
      id: fields[0] as String,
      name: fields[1] as String,
      image: fields[2] as String,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AccountTypeModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountTypeModel _$$_AccountTypeModelFromJson(Map<String, dynamic> json) =>
    _$_AccountTypeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      color: json['color'] as int,
    );

Map<String, dynamic> _$$_AccountTypeModelToJson(_$_AccountTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'color': instance.color,
    };
