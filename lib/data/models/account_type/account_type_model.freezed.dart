// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountTypeModel _$AccountTypeModelFromJson(Map<String, dynamic> json) {
  return _AccountTypeModel.fromJson(json);
}

/// @nodoc
mixin _$AccountTypeModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get image => throw _privateConstructorUsedError;
  @HiveField(3)
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountTypeModelCopyWith<AccountTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeModelCopyWith<$Res> {
  factory $AccountTypeModelCopyWith(
          AccountTypeModel value, $Res Function(AccountTypeModel) then) =
      _$AccountTypeModelCopyWithImpl<$Res, AccountTypeModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String image,
      @HiveField(3) int color});
}

/// @nodoc
class _$AccountTypeModelCopyWithImpl<$Res, $Val extends AccountTypeModel>
    implements $AccountTypeModelCopyWith<$Res> {
  _$AccountTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountTypeModelCopyWith<$Res>
    implements $AccountTypeModelCopyWith<$Res> {
  factory _$$_AccountTypeModelCopyWith(
          _$_AccountTypeModel value, $Res Function(_$_AccountTypeModel) then) =
      __$$_AccountTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String image,
      @HiveField(3) int color});
}

/// @nodoc
class __$$_AccountTypeModelCopyWithImpl<$Res>
    extends _$AccountTypeModelCopyWithImpl<$Res, _$_AccountTypeModel>
    implements _$$_AccountTypeModelCopyWith<$Res> {
  __$$_AccountTypeModelCopyWithImpl(
      _$_AccountTypeModel _value, $Res Function(_$_AccountTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? color = null,
  }) {
    return _then(_$_AccountTypeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountTypeModel implements _AccountTypeModel {
  const _$_AccountTypeModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.image,
      @HiveField(3) required this.color});

  factory _$_AccountTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountTypeModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String image;
  @override
  @HiveField(3)
  final int color;

  @override
  String toString() {
    return 'AccountTypeModel(id: $id, name: $name, image: $image, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountTypeModelCopyWith<_$_AccountTypeModel> get copyWith =>
      __$$_AccountTypeModelCopyWithImpl<_$_AccountTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountTypeModelToJson(
      this,
    );
  }
}

abstract class _AccountTypeModel implements AccountTypeModel {
  const factory _AccountTypeModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String image,
      @HiveField(3) required final int color}) = _$_AccountTypeModel;

  factory _AccountTypeModel.fromJson(Map<String, dynamic> json) =
      _$_AccountTypeModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get image;
  @override
  @HiveField(3)
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$_AccountTypeModelCopyWith<_$_AccountTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
