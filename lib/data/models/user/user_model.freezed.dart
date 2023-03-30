// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get password => throw _privateConstructorUsedError;
  @HiveField(3)
  String get image => throw _privateConstructorUsedError;
  @HiveField(4)
  List<AccountModel> get accounts => throw _privateConstructorUsedError;
  @HiveField(5)
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @HiveField(6)
  List<CreditCardModel> get creditCards => throw _privateConstructorUsedError;
  @HiveField(7)
  List<TagModel> get tags => throw _privateConstructorUsedError;
  @HiveField(8)
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String password,
      @HiveField(3) String image,
      @HiveField(4) List<AccountModel> accounts,
      @HiveField(5) List<CategoryModel> categories,
      @HiveField(6) List<CreditCardModel> creditCards,
      @HiveField(7) List<TagModel> tags,
      @HiveField(8) List<TransactionModel> transactions});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? password = null,
    Object? image = null,
    Object? accounts = null,
    Object? categories = null,
    Object? creditCards = null,
    Object? tags = null,
    Object? transactions = null,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      creditCards: null == creditCards
          ? _value.creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardModel>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String password,
      @HiveField(3) String image,
      @HiveField(4) List<AccountModel> accounts,
      @HiveField(5) List<CategoryModel> categories,
      @HiveField(6) List<CreditCardModel> creditCards,
      @HiveField(7) List<TagModel> tags,
      @HiveField(8) List<TransactionModel> transactions});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? password = null,
    Object? image = null,
    Object? accounts = null,
    Object? categories = null,
    Object? creditCards = null,
    Object? tags = null,
    Object? transactions = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      creditCards: null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardModel>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.password,
      @HiveField(3) required this.image,
      @HiveField(4) required final List<AccountModel> accounts,
      @HiveField(5) required final List<CategoryModel> categories,
      @HiveField(6) required final List<CreditCardModel> creditCards,
      @HiveField(7) required final List<TagModel> tags,
      @HiveField(8) required final List<TransactionModel> transactions})
      : _accounts = accounts,
        _categories = categories,
        _creditCards = creditCards,
        _tags = tags,
        _transactions = transactions;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String password;
  @override
  @HiveField(3)
  final String image;
  final List<AccountModel> _accounts;
  @override
  @HiveField(4)
  List<AccountModel> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<CategoryModel> _categories;
  @override
  @HiveField(5)
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<CreditCardModel> _creditCards;
  @override
  @HiveField(6)
  List<CreditCardModel> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  final List<TagModel> _tags;
  @override
  @HiveField(7)
  List<TagModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<TransactionModel> _transactions;
  @override
  @HiveField(8)
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, password: $password, image: $image, accounts: $accounts, categories: $categories, creditCards: $creditCards, tags: $tags, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      password,
      image,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_creditCards),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String name,
          @HiveField(2) required final String password,
          @HiveField(3) required final String image,
          @HiveField(4) required final List<AccountModel> accounts,
          @HiveField(5) required final List<CategoryModel> categories,
          @HiveField(6) required final List<CreditCardModel> creditCards,
          @HiveField(7) required final List<TagModel> tags,
          @HiveField(8) required final List<TransactionModel> transactions}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get password;
  @override
  @HiveField(3)
  String get image;
  @override
  @HiveField(4)
  List<AccountModel> get accounts;
  @override
  @HiveField(5)
  List<CategoryModel> get categories;
  @override
  @HiveField(6)
  List<CreditCardModel> get creditCards;
  @override
  @HiveField(7)
  List<TagModel> get tags;
  @override
  @HiveField(8)
  List<TransactionModel> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
