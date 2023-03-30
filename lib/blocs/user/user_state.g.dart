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
      (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserUpdatedToJson(_$UserUpdated instance) =>
    <String, dynamic>{
      'users': instance.users,
      'runtimeType': instance.$type,
    };
