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
      incomeCategories: (fields[2] as List).cast<CategoryModel>(),
      expenseCategories: (fields[3] as List).cast<CategoryModel>(),
      creditCards: (fields[4] as List).cast<CreditCardModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.accounts)
      ..writeByte(2)
      ..write(obj.incomeCategories)
      ..writeByte(3)
      ..write(obj.expenseCategories)
      ..writeByte(4)
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
