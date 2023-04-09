// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 6;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as int,
      accounts: (fields[1] as List).cast<AccountModel>(),
      transactions: (fields[2] as List).cast<TransactionModel>(),
      incomeCategories: (fields[3] as List).cast<CategoryModel>(),
      expenseCategories: (fields[4] as List).cast<CategoryModel>(),
      creditCards: (fields[5] as List).cast<CreditCardModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.accounts)
      ..writeByte(2)
      ..write(obj.transactions)
      ..writeByte(3)
      ..write(obj.incomeCategories)
      ..writeByte(4)
      ..write(obj.expenseCategories)
      ..writeByte(5)
      ..write(obj.creditCards);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => AccountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      incomeCategories: (json['incomeCategories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      expenseCategories: (json['expenseCategories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creditCards: (json['creditCards'] as List<dynamic>)
          .map((e) => CreditCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'accounts': instance.accounts,
      'transactions': instance.transactions,
      'incomeCategories': instance.incomeCategories,
      'expenseCategories': instance.expenseCategories,
      'creditCards': instance.creditCards,
    };
