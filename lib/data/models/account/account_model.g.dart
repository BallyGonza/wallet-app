// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountModelAdapter extends TypeAdapter<AccountModel> {
  @override
  final int typeId = 0;

  @override
  AccountModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
      institution: fields[3] as InstitutionModel,
      type: fields[4] as AccountTypeModel,
      color: fields[5] as int,
      balance: fields[6] as double,
      includeInTotal: fields[7] as bool,
      isHidden: fields[8] as bool,
      registers: (fields[9] as List).cast<TransactionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, AccountModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.institution)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.balance)
      ..writeByte(7)
      ..write(obj.includeInTotal)
      ..writeByte(8)
      ..write(obj.isHidden)
      ..writeByte(9)
      ..write(obj.registers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      institution: InstitutionModel.fromJson(
          json['institution'] as Map<String, dynamic>),
      type: AccountTypeModel.fromJson(json['type'] as Map<String, dynamic>),
      color: json['color'] as int,
      balance: (json['balance'] as num).toDouble(),
      includeInTotal: json['includeInTotal'] as bool,
      isHidden: json['isHidden'] as bool,
      registers: (json['registers'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'institution': instance.institution,
      'type': instance.type,
      'color': instance.color,
      'balance': instance.balance,
      'includeInTotal': instance.includeInTotal,
      'isHidden': instance.isHidden,
      'registers': instance.registers,
    };
