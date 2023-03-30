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
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
      amount: fields[3] as double,
      date: fields[4] as DateTime,
      isIncome: fields[5] as bool,
      isExpense: fields[6] as bool,
      isTransfer: fields[7] as bool,
      isRecurrent: fields[8] as bool,
      isReceived: fields[9] as bool,
      category: fields[10] as CategoryModel,
      tags: (fields[11] as List).cast<TagModel>(),
      account: fields[12] as AccountModel,
      attachment: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.amount)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.isIncome)
      ..writeByte(6)
      ..write(obj.isExpense)
      ..writeByte(7)
      ..write(obj.isTransfer)
      ..writeByte(8)
      ..write(obj.isRecurrent)
      ..writeByte(9)
      ..write(obj.isReceived)
      ..writeByte(10)
      ..write(obj.category)
      ..writeByte(11)
      ..write(obj.tags)
      ..writeByte(12)
      ..write(obj.account)
      ..writeByte(13)
      ..write(obj.attachment);
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

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      isIncome: json['isIncome'] as bool,
      isExpense: json['isExpense'] as bool,
      isTransfer: json['isTransfer'] as bool,
      isRecurrent: json['isRecurrent'] as bool,
      isReceived: json['isReceived'] as bool,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      account: AccountModel.fromJson(json['account'] as Map<String, dynamic>),
      attachment: json['attachment'] as String,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'isIncome': instance.isIncome,
      'isExpense': instance.isExpense,
      'isTransfer': instance.isTransfer,
      'isRecurrent': instance.isRecurrent,
      'isReceived': instance.isReceived,
      'category': instance.category,
      'tags': instance.tags,
      'account': instance.account,
      'attachment': instance.attachment,
    };
