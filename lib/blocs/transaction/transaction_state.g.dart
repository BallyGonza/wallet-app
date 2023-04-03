// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionInitial _$$TransactionInitialFromJson(Map<String, dynamic> json) =>
    _$TransactionInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionInitialToJson(
        _$TransactionInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TransactionUpdated _$$TransactionUpdatedFromJson(Map<String, dynamic> json) =>
    _$TransactionUpdated(
      (json['transactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionUpdatedToJson(
        _$TransactionUpdated instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
      'runtimeType': instance.$type,
    };
