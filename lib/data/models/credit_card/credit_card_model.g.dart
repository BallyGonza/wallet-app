// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditCardModelAdapter extends TypeAdapter<CreditCardModel> {
  @override
  final int typeId = 9;

  @override
  CreditCardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditCardModel(
      id: fields[0] as int,
      name: fields[1] as String,
      institution: fields[2] as InstitutionModel,
      cardType: fields[3] as InstitutionModel,
      limit: fields[4] as double,
      transactions: (fields[5] as List).cast<CreditCardTransactionModel>(),
      dueDate: fields[6] as DateTime,
      number: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreditCardModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.institution)
      ..writeByte(3)
      ..write(obj.cardType)
      ..writeByte(4)
      ..write(obj.limit)
      ..writeByte(5)
      ..write(obj.transactions)
      ..writeByte(6)
      ..write(obj.dueDate)
      ..writeByte(7)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) =>
    CreditCardModel(
      id: json['id'] as int,
      name: json['name'] as String,
      institution: InstitutionModel.fromJson(
          json['institution'] as Map<String, dynamic>),
      cardType:
          InstitutionModel.fromJson(json['cardType'] as Map<String, dynamic>),
      limit: (json['limit'] as num).toDouble(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) =>
              CreditCardTransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dueDate: DateTime.parse(json['dueDate'] as String),
      number: json['number'] as String,
    );

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'institution': instance.institution,
      'cardType': instance.cardType,
      'limit': instance.limit,
      'transactions': instance.transactions,
      'dueDate': instance.dueDate.toIso8601String(),
      'number': instance.number,
    };
