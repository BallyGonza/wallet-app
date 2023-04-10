// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_transaction_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditCardTransactionModelAdapter
    extends TypeAdapter<CreditCardTransactionModel> {
  @override
  final int typeId = 3;

  @override
  CreditCardTransactionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditCardTransactionModel(
      id: fields[0] as int,
      note: fields[1] as String,
      amount: fields[2] as double,
      date: fields[3] as DateTime,
      category: fields[4] as CategoryModel,
      creditCard: fields[5] as CreditCardModel,
      isReccurent: fields[6] as bool,
      cuotas: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CreditCardTransactionModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.note)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.creditCard)
      ..writeByte(6)
      ..write(obj.isReccurent)
      ..writeByte(7)
      ..write(obj.cuotas);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCardTransactionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardTransactionModel _$CreditCardTransactionModelFromJson(
        Map<String, dynamic> json) =>
    CreditCardTransactionModel(
      id: json['id'] as int,
      note: json['note'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      creditCard:
          CreditCardModel.fromJson(json['creditCard'] as Map<String, dynamic>),
      isReccurent: json['isReccurent'] as bool,
      cuotas: json['cuotas'] as int,
    );

Map<String, dynamic> _$CreditCardTransactionModelToJson(
        CreditCardTransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'category': instance.category,
      'creditCard': instance.creditCard,
      'isReccurent': instance.isReccurent,
      'cuotas': instance.cuotas,
    };
