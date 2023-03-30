// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) {
  return _CreditCardModel.fromJson(json);
}

/// @nodoc
mixin _$CreditCardModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get image => throw _privateConstructorUsedError;
  @HiveField(3)
  int get color => throw _privateConstructorUsedError;
  @HiveField(4)
  String get number => throw _privateConstructorUsedError;
  @HiveField(5)
  String get closingDate => throw _privateConstructorUsedError;
  @HiveField(6)
  String get expirationDate => throw _privateConstructorUsedError;
  @HiveField(7)
  String get cvv => throw _privateConstructorUsedError;
  @HiveField(8)
  String get holderName => throw _privateConstructorUsedError;
  @HiveField(9)
  InstitutionModel get institution => throw _privateConstructorUsedError;
  @HiveField(10)
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  @HiveField(11)
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardModelCopyWith<CreditCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardModelCopyWith<$Res> {
  factory $CreditCardModelCopyWith(
          CreditCardModel value, $Res Function(CreditCardModel) then) =
      _$CreditCardModelCopyWithImpl<$Res, CreditCardModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String image,
      @HiveField(3) int color,
      @HiveField(4) String number,
      @HiveField(5) String closingDate,
      @HiveField(6) String expirationDate,
      @HiveField(7) String cvv,
      @HiveField(8) String holderName,
      @HiveField(9) InstitutionModel institution,
      @HiveField(10) List<TransactionModel> transactions,
      @HiveField(11) double balance});

  $InstitutionModelCopyWith<$Res> get institution;
}

/// @nodoc
class _$CreditCardModelCopyWithImpl<$Res, $Val extends CreditCardModel>
    implements $CreditCardModelCopyWith<$Res> {
  _$CreditCardModelCopyWithImpl(this._value, this._then);

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
    Object? number = null,
    Object? closingDate = null,
    Object? expirationDate = null,
    Object? cvv = null,
    Object? holderName = null,
    Object? institution = null,
    Object? transactions = null,
    Object? balance = null,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      closingDate: null == closingDate
          ? _value.closingDate
          : closingDate // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionModel,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstitutionModelCopyWith<$Res> get institution {
    return $InstitutionModelCopyWith<$Res>(_value.institution, (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreditCardModelCopyWith<$Res>
    implements $CreditCardModelCopyWith<$Res> {
  factory _$$_CreditCardModelCopyWith(
          _$_CreditCardModel value, $Res Function(_$_CreditCardModel) then) =
      __$$_CreditCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String image,
      @HiveField(3) int color,
      @HiveField(4) String number,
      @HiveField(5) String closingDate,
      @HiveField(6) String expirationDate,
      @HiveField(7) String cvv,
      @HiveField(8) String holderName,
      @HiveField(9) InstitutionModel institution,
      @HiveField(10) List<TransactionModel> transactions,
      @HiveField(11) double balance});

  @override
  $InstitutionModelCopyWith<$Res> get institution;
}

/// @nodoc
class __$$_CreditCardModelCopyWithImpl<$Res>
    extends _$CreditCardModelCopyWithImpl<$Res, _$_CreditCardModel>
    implements _$$_CreditCardModelCopyWith<$Res> {
  __$$_CreditCardModelCopyWithImpl(
      _$_CreditCardModel _value, $Res Function(_$_CreditCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? color = null,
    Object? number = null,
    Object? closingDate = null,
    Object? expirationDate = null,
    Object? cvv = null,
    Object? holderName = null,
    Object? institution = null,
    Object? transactions = null,
    Object? balance = null,
  }) {
    return _then(_$_CreditCardModel(
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      closingDate: null == closingDate
          ? _value.closingDate
          : closingDate // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionModel,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditCardModel implements _CreditCardModel {
  const _$_CreditCardModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.image,
      @HiveField(3) required this.color,
      @HiveField(4) required this.number,
      @HiveField(5) required this.closingDate,
      @HiveField(6) required this.expirationDate,
      @HiveField(7) required this.cvv,
      @HiveField(8) required this.holderName,
      @HiveField(9) required this.institution,
      @HiveField(10) required final List<TransactionModel> transactions,
      @HiveField(11) required this.balance})
      : _transactions = transactions;

  factory _$_CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardModelFromJson(json);

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
  @HiveField(4)
  final String number;
  @override
  @HiveField(5)
  final String closingDate;
  @override
  @HiveField(6)
  final String expirationDate;
  @override
  @HiveField(7)
  final String cvv;
  @override
  @HiveField(8)
  final String holderName;
  @override
  @HiveField(9)
  final InstitutionModel institution;
  final List<TransactionModel> _transactions;
  @override
  @HiveField(10)
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @HiveField(11)
  final double balance;

  @override
  String toString() {
    return 'CreditCardModel(id: $id, name: $name, image: $image, color: $color, number: $number, closingDate: $closingDate, expirationDate: $expirationDate, cvv: $cvv, holderName: $holderName, institution: $institution, transactions: $transactions, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.closingDate, closingDate) ||
                other.closingDate == closingDate) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      color,
      number,
      closingDate,
      expirationDate,
      cvv,
      holderName,
      institution,
      const DeepCollectionEquality().hash(_transactions),
      balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardModelCopyWith<_$_CreditCardModel> get copyWith =>
      __$$_CreditCardModelCopyWithImpl<_$_CreditCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardModelToJson(
      this,
    );
  }
}

abstract class _CreditCardModel implements CreditCardModel {
  const factory _CreditCardModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String image,
      @HiveField(3) required final int color,
      @HiveField(4) required final String number,
      @HiveField(5) required final String closingDate,
      @HiveField(6) required final String expirationDate,
      @HiveField(7) required final String cvv,
      @HiveField(8) required final String holderName,
      @HiveField(9) required final InstitutionModel institution,
      @HiveField(10) required final List<TransactionModel> transactions,
      @HiveField(11) required final double balance}) = _$_CreditCardModel;

  factory _CreditCardModel.fromJson(Map<String, dynamic> json) =
      _$_CreditCardModel.fromJson;

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
  @HiveField(4)
  String get number;
  @override
  @HiveField(5)
  String get closingDate;
  @override
  @HiveField(6)
  String get expirationDate;
  @override
  @HiveField(7)
  String get cvv;
  @override
  @HiveField(8)
  String get holderName;
  @override
  @HiveField(9)
  InstitutionModel get institution;
  @override
  @HiveField(10)
  List<TransactionModel> get transactions;
  @override
  @HiveField(11)
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardModelCopyWith<_$_CreditCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
