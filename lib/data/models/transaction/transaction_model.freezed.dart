// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get description => throw _privateConstructorUsedError;
  @HiveField(2)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(3)
  String get date => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isIncome => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get isRecurrent => throw _privateConstructorUsedError;
  @HiveField(6)
  CategoryModel get category => throw _privateConstructorUsedError;
  @HiveField(7)
  List<TagModel> get tags => throw _privateConstructorUsedError;
  @HiveField(10)
  AccountModel get account => throw _privateConstructorUsedError;
  @HiveField(11)
  String get attachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String description,
      @HiveField(2) double amount,
      @HiveField(3) String date,
      @HiveField(4) bool isIncome,
      @HiveField(5) bool isRecurrent,
      @HiveField(6) CategoryModel category,
      @HiveField(7) List<TagModel> tags,
      @HiveField(10) AccountModel account,
      @HiveField(11) String attachment});

  $CategoryModelCopyWith<$Res> get category;
  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? date = null,
    Object? isIncome = null,
    Object? isRecurrent = null,
    Object? category = null,
    Object? tags = null,
    Object? account = null,
    Object? attachment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecurrent: null == isRecurrent
          ? _value.isRecurrent
          : isRecurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get account {
    return $AccountModelCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String description,
      @HiveField(2) double amount,
      @HiveField(3) String date,
      @HiveField(4) bool isIncome,
      @HiveField(5) bool isRecurrent,
      @HiveField(6) CategoryModel category,
      @HiveField(7) List<TagModel> tags,
      @HiveField(10) AccountModel account,
      @HiveField(11) String attachment});

  @override
  $CategoryModelCopyWith<$Res> get category;
  @override
  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? date = null,
    Object? isIncome = null,
    Object? isRecurrent = null,
    Object? category = null,
    Object? tags = null,
    Object? account = null,
    Object? attachment = null,
  }) {
    return _then(_$_TransactionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecurrent: null == isRecurrent
          ? _value.isRecurrent
          : isRecurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.description,
      @HiveField(2) required this.amount,
      @HiveField(3) required this.date,
      @HiveField(4) required this.isIncome,
      @HiveField(5) required this.isRecurrent,
      @HiveField(6) required this.category,
      @HiveField(7) required final List<TagModel> tags,
      @HiveField(10) required this.account,
      @HiveField(11) required this.attachment})
      : _tags = tags;

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String description;
  @override
  @HiveField(2)
  final double amount;
  @override
  @HiveField(3)
  final String date;
  @override
  @HiveField(4)
  final bool isIncome;
  @override
  @HiveField(5)
  final bool isRecurrent;
  @override
  @HiveField(6)
  final CategoryModel category;
  final List<TagModel> _tags;
  @override
  @HiveField(7)
  List<TagModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(10)
  final AccountModel account;
  @override
  @HiveField(11)
  final String attachment;

  @override
  String toString() {
    return 'TransactionModel(id: $id, description: $description, amount: $amount, date: $date, isIncome: $isIncome, isRecurrent: $isRecurrent, category: $category, tags: $tags, account: $account, attachment: $attachment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.isRecurrent, isRecurrent) ||
                other.isRecurrent == isRecurrent) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      amount,
      date,
      isIncome,
      isRecurrent,
      category,
      const DeepCollectionEquality().hash(_tags),
      account,
      attachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String description,
      @HiveField(2) required final double amount,
      @HiveField(3) required final String date,
      @HiveField(4) required final bool isIncome,
      @HiveField(5) required final bool isRecurrent,
      @HiveField(6) required final CategoryModel category,
      @HiveField(7) required final List<TagModel> tags,
      @HiveField(10) required final AccountModel account,
      @HiveField(11) required final String attachment}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get description;
  @override
  @HiveField(2)
  double get amount;
  @override
  @HiveField(3)
  String get date;
  @override
  @HiveField(4)
  bool get isIncome;
  @override
  @HiveField(5)
  bool get isRecurrent;
  @override
  @HiveField(6)
  CategoryModel get category;
  @override
  @HiveField(7)
  List<TagModel> get tags;
  @override
  @HiveField(10)
  AccountModel get account;
  @override
  @HiveField(11)
  String get attachment;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
