// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditCardModelAdapter extends TypeAdapter<CreditCardModel> {
  @override
  final int typeId = 3;

  @override
  CreditCardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditCardModel(
      id: fields[0] as String,
      name: fields[1] as String,
      image: fields[2] as String,
      color: fields[3] as int,
      number: fields[4] as String,
      closingDate: fields[5] as String,
      expirationDate: fields[6] as String,
      cvv: fields[7] as String,
      holderName: fields[8] as String,
      institution: fields[9] as InstitutionModel,
      transactions: (fields[10] as List).cast<TransactionModel>(),
      balance: fields[11] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CreditCardModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.number)
      ..writeByte(5)
      ..write(obj.closingDate)
      ..writeByte(6)
      ..write(obj.expirationDate)
      ..writeByte(7)
      ..write(obj.cvv)
      ..writeByte(8)
      ..write(obj.holderName)
      ..writeByte(9)
      ..write(obj.institution)
      ..writeByte(10)
      ..write(obj.transactions)
      ..writeByte(11)
      ..write(obj.balance);
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
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      color: json['color'] as int,
      number: json['number'] as String,
      closingDate: json['closingDate'] as String,
      expirationDate: json['expirationDate'] as String,
      cvv: json['cvv'] as String,
      holderName: json['holderName'] as String,
      institution: InstitutionModel.fromJson(
          json['institution'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$CreditCardModelToJson(CreditCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'color': instance.color,
      'number': instance.number,
      'closingDate': instance.closingDate,
      'expirationDate': instance.expirationDate,
      'cvv': instance.cvv,
      'holderName': instance.holderName,
      'institution': instance.institution,
      'transactions': instance.transactions,
      'balance': instance.balance,
    };
