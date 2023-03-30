// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  InstitutionModel get institution => throw _privateConstructorUsedError;
  @HiveField(4)
  AccountTypeModel get type => throw _privateConstructorUsedError;
  @HiveField(5)
  int get color => throw _privateConstructorUsedError;
  @HiveField(6)
  double get balance => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get includeInTotal => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get isHidden => throw _privateConstructorUsedError;
  @HiveField(9)
  List<TransactionModel> get registers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) InstitutionModel institution,
      @HiveField(4) AccountTypeModel type,
      @HiveField(5) int color,
      @HiveField(6) double balance,
      @HiveField(7) bool includeInTotal,
      @HiveField(8) bool isHidden,
      @HiveField(9) List<TransactionModel> registers});

  $InstitutionModelCopyWith<$Res> get institution;
  $AccountTypeModelCopyWith<$Res> get type;
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? institution = null,
    Object? type = null,
    Object? color = null,
    Object? balance = null,
    Object? includeInTotal = null,
    Object? isHidden = null,
    Object? registers = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTypeModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      includeInTotal: null == includeInTotal
          ? _value.includeInTotal
          : includeInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      registers: null == registers
          ? _value.registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstitutionModelCopyWith<$Res> get institution {
    return $InstitutionModelCopyWith<$Res>(_value.institution, (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountTypeModelCopyWith<$Res> get type {
    return $AccountTypeModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$_AccountModelCopyWith(
          _$_AccountModel value, $Res Function(_$_AccountModel) then) =
      __$$_AccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) InstitutionModel institution,
      @HiveField(4) AccountTypeModel type,
      @HiveField(5) int color,
      @HiveField(6) double balance,
      @HiveField(7) bool includeInTotal,
      @HiveField(8) bool isHidden,
      @HiveField(9) List<TransactionModel> registers});

  @override
  $InstitutionModelCopyWith<$Res> get institution;
  @override
  $AccountTypeModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$_AccountModelCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$_AccountModel>
    implements _$$_AccountModelCopyWith<$Res> {
  __$$_AccountModelCopyWithImpl(
      _$_AccountModel _value, $Res Function(_$_AccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? institution = null,
    Object? type = null,
    Object? color = null,
    Object? balance = null,
    Object? includeInTotal = null,
    Object? isHidden = null,
    Object? registers = null,
  }) {
    return _then(_$_AccountModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTypeModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      includeInTotal: null == includeInTotal
          ? _value.includeInTotal
          : includeInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      registers: null == registers
          ? _value._registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountModel implements _AccountModel {
  const _$_AccountModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description,
      @HiveField(3) required this.institution,
      @HiveField(4) required this.type,
      @HiveField(5) required this.color,
      @HiveField(6) required this.balance,
      @HiveField(7) required this.includeInTotal,
      @HiveField(8) required this.isHidden,
      @HiveField(9) required final List<TransactionModel> registers})
      : _registers = registers;

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String description;
  @override
  @HiveField(3)
  final InstitutionModel institution;
  @override
  @HiveField(4)
  final AccountTypeModel type;
  @override
  @HiveField(5)
  final int color;
  @override
  @HiveField(6)
  final double balance;
  @override
  @HiveField(7)
  final bool includeInTotal;
  @override
  @HiveField(8)
  final bool isHidden;
  final List<TransactionModel> _registers;
  @override
  @HiveField(9)
  List<TransactionModel> get registers {
    if (_registers is EqualUnmodifiableListView) return _registers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_registers);
  }

  @override
  String toString() {
    return 'AccountModel(id: $id, name: $name, description: $description, institution: $institution, type: $type, color: $color, balance: $balance, includeInTotal: $includeInTotal, isHidden: $isHidden, registers: $registers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.includeInTotal, includeInTotal) ||
                other.includeInTotal == includeInTotal) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality()
                .equals(other._registers, _registers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      institution,
      type,
      color,
      balance,
      includeInTotal,
      isHidden,
      const DeepCollectionEquality().hash(_registers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      __$$_AccountModelCopyWithImpl<_$_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountModelToJson(
      this,
    );
  }
}

abstract class _AccountModel implements AccountModel {
  const factory _AccountModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String name,
          @HiveField(2) required final String description,
          @HiveField(3) required final InstitutionModel institution,
          @HiveField(4) required final AccountTypeModel type,
          @HiveField(5) required final int color,
          @HiveField(6) required final double balance,
          @HiveField(7) required final bool includeInTotal,
          @HiveField(8) required final bool isHidden,
          @HiveField(9) required final List<TransactionModel> registers}) =
      _$_AccountModel;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get description;
  @override
  @HiveField(3)
  InstitutionModel get institution;
  @override
  @HiveField(4)
  AccountTypeModel get type;
  @override
  @HiveField(5)
  int get color;
  @override
  @HiveField(6)
  double get balance;
  @override
  @HiveField(7)
  bool get includeInTotal;
  @override
  @HiveField(8)
  bool get isHidden;
  @override
  @HiveField(9)
  List<TransactionModel> get registers;
  @override
  @JsonKey(ignore: true)
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
