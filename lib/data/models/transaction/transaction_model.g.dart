// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionModelAdapter extends TypeAdapter<TransactionModel> {
  @override
  final int typeId = 7;

  @override
  TransactionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionModel(
      id: fields[0] as int,
      note: fields[1] as String,
      amount: fields[2] as double,
      date: fields[3] as DateTime,
      isIncome: fields[4] as bool,
      category: fields[6] as CategoryModel,
      account: fields[7] as AccountModel,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.note)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.isIncome)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.account);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      id: json['id'] as int,
      note: json['note'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      isIncome: json['isIncome'] as bool,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      account: AccountModel.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'isIncome': instance.isIncome,
      'category': instance.category,
      'account': instance.account,
    };
