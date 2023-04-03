// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 8;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as int,
      name: fields[1] as String,
      password: fields[2] as String,
      image: fields[3] as String,
      accounts: (fields[4] as List).cast<AccountModel>(),
      categories: (fields[5] as List).cast<CategoryModel>(),
      creditCards: (fields[6] as List).cast<CreditCardModel>(),
      tags: (fields[7] as List).cast<TagModel>(),
      transactions: (fields[8] as List).cast<TransactionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.accounts)
      ..writeByte(5)
      ..write(obj.categories)
      ..writeByte(6)
      ..write(obj.creditCards)
      ..writeByte(7)
      ..write(obj.tags)
      ..writeByte(8)
      ..write(obj.transactions);
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
      name: json['name'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => AccountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creditCards: (json['creditCards'] as List<dynamic>)
          .map((e) => CreditCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'image': instance.image,
      'accounts': instance.accounts,
      'categories': instance.categories,
      'creditCards': instance.creditCards,
      'tags': instance.tags,
      'transactions': instance.transactions,
    };
