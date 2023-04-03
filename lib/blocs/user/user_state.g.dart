// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInitial _$$UserInitialFromJson(Map<String, dynamic> json) =>
    _$UserInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserInitialToJson(_$UserInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserUpdated _$$UserUpdatedFromJson(Map<String, dynamic> json) =>
    _$UserUpdated(
      UserModel.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserUpdatedToJson(_$UserUpdated instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };
