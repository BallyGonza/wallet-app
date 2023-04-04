// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitialEventCopyWith<$Res> {
  factory _$$UserInitialEventCopyWith(
          _$UserInitialEvent value, $Res Function(_$UserInitialEvent) then) =
      __$$UserInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserInitialEvent>
    implements _$$UserInitialEventCopyWith<$Res> {
  __$$UserInitialEventCopyWithImpl(
      _$UserInitialEvent _value, $Res Function(_$UserInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialEvent implements UserInitialEvent {
  const _$UserInitialEvent();

  @override
  String toString() {
    return 'UserEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserInitialEvent implements UserEvent {
  const factory UserInitialEvent() = _$UserInitialEvent;
}

/// @nodoc
abstract class _$$UserAddTransactionEventCopyWith<$Res> {
  factory _$$UserAddTransactionEventCopyWith(_$UserAddTransactionEvent value,
          $Res Function(_$UserAddTransactionEvent) then) =
      __$$UserAddTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, TransactionModel transaction});
}

/// @nodoc
class __$$UserAddTransactionEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserAddTransactionEvent>
    implements _$$UserAddTransactionEventCopyWith<$Res> {
  __$$UserAddTransactionEventCopyWithImpl(_$UserAddTransactionEvent _value,
      $Res Function(_$UserAddTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? transaction = null,
  }) {
    return _then(_$UserAddTransactionEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$UserAddTransactionEvent implements UserAddTransactionEvent {
  const _$UserAddTransactionEvent(this.user, this.transaction);

  @override
  final UserModel user;
  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'UserEvent.addTransaction(user: $user, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddTransactionEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddTransactionEventCopyWith<_$UserAddTransactionEvent> get copyWith =>
      __$$UserAddTransactionEventCopyWithImpl<_$UserAddTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return addTransaction(user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return addTransaction?.call(user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(user, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class UserAddTransactionEvent implements UserEvent {
  const factory UserAddTransactionEvent(
          final UserModel user, final TransactionModel transaction) =
      _$UserAddTransactionEvent;

  UserModel get user;
  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$UserAddTransactionEventCopyWith<_$UserAddTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateTransactionEventCopyWith<$Res> {
  factory _$$UserUpdateTransactionEventCopyWith(
          _$UserUpdateTransactionEvent value,
          $Res Function(_$UserUpdateTransactionEvent) then) =
      __$$UserUpdateTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, TransactionModel transaction, int index});
}

/// @nodoc
class __$$UserUpdateTransactionEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateTransactionEvent>
    implements _$$UserUpdateTransactionEventCopyWith<$Res> {
  __$$UserUpdateTransactionEventCopyWithImpl(
      _$UserUpdateTransactionEvent _value,
      $Res Function(_$UserUpdateTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? transaction = null,
    Object? index = null,
  }) {
    return _then(_$UserUpdateTransactionEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserUpdateTransactionEvent implements UserUpdateTransactionEvent {
  const _$UserUpdateTransactionEvent(this.user, this.transaction, this.index);

  @override
  final UserModel user;
  @override
  final TransactionModel transaction;
  @override
  final int index;

  @override
  String toString() {
    return 'UserEvent.updateTransaction(user: $user, transaction: $transaction, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateTransactionEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, transaction, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateTransactionEventCopyWith<_$UserUpdateTransactionEvent>
      get copyWith => __$$UserUpdateTransactionEventCopyWithImpl<
          _$UserUpdateTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return updateTransaction(user, transaction, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return updateTransaction?.call(user, transaction, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(user, transaction, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class UserUpdateTransactionEvent implements UserEvent {
  const factory UserUpdateTransactionEvent(
      final UserModel user,
      final TransactionModel transaction,
      final int index) = _$UserUpdateTransactionEvent;

  UserModel get user;
  TransactionModel get transaction;
  int get index;
  @JsonKey(ignore: true)
  _$$UserUpdateTransactionEventCopyWith<_$UserUpdateTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRemoveTransactionEventCopyWith<$Res> {
  factory _$$UserRemoveTransactionEventCopyWith(
          _$UserRemoveTransactionEvent value,
          $Res Function(_$UserRemoveTransactionEvent) then) =
      __$$UserRemoveTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, TransactionModel transaction});
}

/// @nodoc
class __$$UserRemoveTransactionEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserRemoveTransactionEvent>
    implements _$$UserRemoveTransactionEventCopyWith<$Res> {
  __$$UserRemoveTransactionEventCopyWithImpl(
      _$UserRemoveTransactionEvent _value,
      $Res Function(_$UserRemoveTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? transaction = null,
  }) {
    return _then(_$UserRemoveTransactionEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$UserRemoveTransactionEvent implements UserRemoveTransactionEvent {
  const _$UserRemoveTransactionEvent(this.user, this.transaction);

  @override
  final UserModel user;
  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'UserEvent.removeTransaction(user: $user, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRemoveTransactionEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRemoveTransactionEventCopyWith<_$UserRemoveTransactionEvent>
      get copyWith => __$$UserRemoveTransactionEventCopyWithImpl<
          _$UserRemoveTransactionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return removeTransaction(user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return removeTransaction?.call(user, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeTransaction != null) {
      return removeTransaction(user, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return removeTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return removeTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeTransaction != null) {
      return removeTransaction(this);
    }
    return orElse();
  }
}

abstract class UserRemoveTransactionEvent implements UserEvent {
  const factory UserRemoveTransactionEvent(
          final UserModel user, final TransactionModel transaction) =
      _$UserRemoveTransactionEvent;

  UserModel get user;
  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$UserRemoveTransactionEventCopyWith<_$UserRemoveTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddAccountEventCopyWith<$Res> {
  factory _$$UserAddAccountEventCopyWith(_$UserAddAccountEvent value,
          $Res Function(_$UserAddAccountEvent) then) =
      __$$UserAddAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, AccountModel account});
}

/// @nodoc
class __$$UserAddAccountEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserAddAccountEvent>
    implements _$$UserAddAccountEventCopyWith<$Res> {
  __$$UserAddAccountEventCopyWithImpl(
      _$UserAddAccountEvent _value, $Res Function(_$UserAddAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? account = null,
  }) {
    return _then(_$UserAddAccountEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc

class _$UserAddAccountEvent implements UserAddAccountEvent {
  const _$UserAddAccountEvent(this.user, this.account);

  @override
  final UserModel user;
  @override
  final AccountModel account;

  @override
  String toString() {
    return 'UserEvent.addAccount(user: $user, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddAccountEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddAccountEventCopyWith<_$UserAddAccountEvent> get copyWith =>
      __$$UserAddAccountEventCopyWithImpl<_$UserAddAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return addAccount(user, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return addAccount?.call(user, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (addAccount != null) {
      return addAccount(user, account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return addAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return addAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (addAccount != null) {
      return addAccount(this);
    }
    return orElse();
  }
}

abstract class UserAddAccountEvent implements UserEvent {
  const factory UserAddAccountEvent(
      final UserModel user, final AccountModel account) = _$UserAddAccountEvent;

  UserModel get user;
  AccountModel get account;
  @JsonKey(ignore: true)
  _$$UserAddAccountEventCopyWith<_$UserAddAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateAccountEventCopyWith<$Res> {
  factory _$$UserUpdateAccountEventCopyWith(_$UserUpdateAccountEvent value,
          $Res Function(_$UserUpdateAccountEvent) then) =
      __$$UserUpdateAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, AccountModel account, int index});
}

/// @nodoc
class __$$UserUpdateAccountEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateAccountEvent>
    implements _$$UserUpdateAccountEventCopyWith<$Res> {
  __$$UserUpdateAccountEventCopyWithImpl(_$UserUpdateAccountEvent _value,
      $Res Function(_$UserUpdateAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? account = null,
    Object? index = null,
  }) {
    return _then(_$UserUpdateAccountEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserUpdateAccountEvent implements UserUpdateAccountEvent {
  const _$UserUpdateAccountEvent(this.user, this.account, this.index);

  @override
  final UserModel user;
  @override
  final AccountModel account;
  @override
  final int index;

  @override
  String toString() {
    return 'UserEvent.updateAccount(user: $user, account: $account, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateAccountEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, account, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateAccountEventCopyWith<_$UserUpdateAccountEvent> get copyWith =>
      __$$UserUpdateAccountEventCopyWithImpl<_$UserUpdateAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return updateAccount(user, account, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return updateAccount?.call(user, account, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateAccount != null) {
      return updateAccount(user, account, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return updateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return updateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateAccount != null) {
      return updateAccount(this);
    }
    return orElse();
  }
}

abstract class UserUpdateAccountEvent implements UserEvent {
  const factory UserUpdateAccountEvent(
          final UserModel user, final AccountModel account, final int index) =
      _$UserUpdateAccountEvent;

  UserModel get user;
  AccountModel get account;
  int get index;
  @JsonKey(ignore: true)
  _$$UserUpdateAccountEventCopyWith<_$UserUpdateAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRemoveAccountEventCopyWith<$Res> {
  factory _$$UserRemoveAccountEventCopyWith(_$UserRemoveAccountEvent value,
          $Res Function(_$UserRemoveAccountEvent) then) =
      __$$UserRemoveAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, AccountModel account});
}

/// @nodoc
class __$$UserRemoveAccountEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserRemoveAccountEvent>
    implements _$$UserRemoveAccountEventCopyWith<$Res> {
  __$$UserRemoveAccountEventCopyWithImpl(_$UserRemoveAccountEvent _value,
      $Res Function(_$UserRemoveAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? account = null,
  }) {
    return _then(_$UserRemoveAccountEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc

class _$UserRemoveAccountEvent implements UserRemoveAccountEvent {
  const _$UserRemoveAccountEvent(this.user, this.account);

  @override
  final UserModel user;
  @override
  final AccountModel account;

  @override
  String toString() {
    return 'UserEvent.removeAccount(user: $user, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRemoveAccountEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRemoveAccountEventCopyWith<_$UserRemoveAccountEvent> get copyWith =>
      __$$UserRemoveAccountEventCopyWithImpl<_$UserRemoveAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return removeAccount(user, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return removeAccount?.call(user, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(user, account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return removeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return removeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(this);
    }
    return orElse();
  }
}

abstract class UserRemoveAccountEvent implements UserEvent {
  const factory UserRemoveAccountEvent(
          final UserModel user, final AccountModel account) =
      _$UserRemoveAccountEvent;

  UserModel get user;
  AccountModel get account;
  @JsonKey(ignore: true)
  _$$UserRemoveAccountEventCopyWith<_$UserRemoveAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddCategoryEventCopyWith<$Res> {
  factory _$$UserAddCategoryEventCopyWith(_$UserAddCategoryEvent value,
          $Res Function(_$UserAddCategoryEvent) then) =
      __$$UserAddCategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, CategoryModel category});
}

/// @nodoc
class __$$UserAddCategoryEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserAddCategoryEvent>
    implements _$$UserAddCategoryEventCopyWith<$Res> {
  __$$UserAddCategoryEventCopyWithImpl(_$UserAddCategoryEvent _value,
      $Res Function(_$UserAddCategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? category = null,
  }) {
    return _then(_$UserAddCategoryEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$UserAddCategoryEvent implements UserAddCategoryEvent {
  const _$UserAddCategoryEvent(this.user, this.category);

  @override
  final UserModel user;
  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'UserEvent.addCategory(user: $user, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddCategoryEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddCategoryEventCopyWith<_$UserAddCategoryEvent> get copyWith =>
      __$$UserAddCategoryEventCopyWithImpl<_$UserAddCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return addCategory(user, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return addCategory?.call(user, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(user, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class UserAddCategoryEvent implements UserEvent {
  const factory UserAddCategoryEvent(
          final UserModel user, final CategoryModel category) =
      _$UserAddCategoryEvent;

  UserModel get user;
  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$UserAddCategoryEventCopyWith<_$UserAddCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateCategoryEventCopyWith<$Res> {
  factory _$$UserUpdateCategoryEventCopyWith(_$UserUpdateCategoryEvent value,
          $Res Function(_$UserUpdateCategoryEvent) then) =
      __$$UserUpdateCategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, CategoryModel category, int index});
}

/// @nodoc
class __$$UserUpdateCategoryEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateCategoryEvent>
    implements _$$UserUpdateCategoryEventCopyWith<$Res> {
  __$$UserUpdateCategoryEventCopyWithImpl(_$UserUpdateCategoryEvent _value,
      $Res Function(_$UserUpdateCategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? category = null,
    Object? index = null,
  }) {
    return _then(_$UserUpdateCategoryEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserUpdateCategoryEvent implements UserUpdateCategoryEvent {
  const _$UserUpdateCategoryEvent(this.user, this.category, this.index);

  @override
  final UserModel user;
  @override
  final CategoryModel category;
  @override
  final int index;

  @override
  String toString() {
    return 'UserEvent.updateCategory(user: $user, category: $category, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateCategoryEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, category, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateCategoryEventCopyWith<_$UserUpdateCategoryEvent> get copyWith =>
      __$$UserUpdateCategoryEventCopyWithImpl<_$UserUpdateCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return updateCategory(user, category, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return updateCategory?.call(user, category, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(user, category, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class UserUpdateCategoryEvent implements UserEvent {
  const factory UserUpdateCategoryEvent(
          final UserModel user, final CategoryModel category, final int index) =
      _$UserUpdateCategoryEvent;

  UserModel get user;
  CategoryModel get category;
  int get index;
  @JsonKey(ignore: true)
  _$$UserUpdateCategoryEventCopyWith<_$UserUpdateCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRemoveCategoryEventCopyWith<$Res> {
  factory _$$UserRemoveCategoryEventCopyWith(_$UserRemoveCategoryEvent value,
          $Res Function(_$UserRemoveCategoryEvent) then) =
      __$$UserRemoveCategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, CategoryModel category});
}

/// @nodoc
class __$$UserRemoveCategoryEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserRemoveCategoryEvent>
    implements _$$UserRemoveCategoryEventCopyWith<$Res> {
  __$$UserRemoveCategoryEventCopyWithImpl(_$UserRemoveCategoryEvent _value,
      $Res Function(_$UserRemoveCategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? category = null,
  }) {
    return _then(_$UserRemoveCategoryEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$UserRemoveCategoryEvent implements UserRemoveCategoryEvent {
  const _$UserRemoveCategoryEvent(this.user, this.category);

  @override
  final UserModel user;
  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'UserEvent.removeCategory(user: $user, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRemoveCategoryEvent &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRemoveCategoryEventCopyWith<_$UserRemoveCategoryEvent> get copyWith =>
      __$$UserRemoveCategoryEventCopyWithImpl<_$UserRemoveCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user, TransactionModel transaction)
        addTransaction,
    required TResult Function(
            UserModel user, TransactionModel transaction, int index)
        updateTransaction,
    required TResult Function(UserModel user, TransactionModel transaction)
        removeTransaction,
    required TResult Function(UserModel user, AccountModel account) addAccount,
    required TResult Function(UserModel user, AccountModel account, int index)
        updateAccount,
    required TResult Function(UserModel user, AccountModel account)
        removeAccount,
    required TResult Function(UserModel user, CategoryModel category)
        addCategory,
    required TResult Function(UserModel user, CategoryModel category, int index)
        updateCategory,
    required TResult Function(UserModel user, CategoryModel category)
        removeCategory,
  }) {
    return removeCategory(user, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult? Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult? Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult? Function(UserModel user, AccountModel account)? addAccount,
    TResult? Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult? Function(UserModel user, AccountModel account)? removeAccount,
    TResult? Function(UserModel user, CategoryModel category)? addCategory,
    TResult? Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult? Function(UserModel user, CategoryModel category)? removeCategory,
  }) {
    return removeCategory?.call(user, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user, TransactionModel transaction)?
        addTransaction,
    TResult Function(UserModel user, TransactionModel transaction, int index)?
        updateTransaction,
    TResult Function(UserModel user, TransactionModel transaction)?
        removeTransaction,
    TResult Function(UserModel user, AccountModel account)? addAccount,
    TResult Function(UserModel user, AccountModel account, int index)?
        updateAccount,
    TResult Function(UserModel user, AccountModel account)? removeAccount,
    TResult Function(UserModel user, CategoryModel category)? addCategory,
    TResult Function(UserModel user, CategoryModel category, int index)?
        updateCategory,
    TResult Function(UserModel user, CategoryModel category)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(user, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddTransactionEvent value) addTransaction,
    required TResult Function(UserUpdateTransactionEvent value)
        updateTransaction,
    required TResult Function(UserRemoveTransactionEvent value)
        removeTransaction,
    required TResult Function(UserAddAccountEvent value) addAccount,
    required TResult Function(UserUpdateAccountEvent value) updateAccount,
    required TResult Function(UserRemoveAccountEvent value) removeAccount,
    required TResult Function(UserAddCategoryEvent value) addCategory,
    required TResult Function(UserUpdateCategoryEvent value) updateCategory,
    required TResult Function(UserRemoveCategoryEvent value) removeCategory,
  }) {
    return removeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddTransactionEvent value)? addTransaction,
    TResult? Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult? Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult? Function(UserAddAccountEvent value)? addAccount,
    TResult? Function(UserUpdateAccountEvent value)? updateAccount,
    TResult? Function(UserRemoveAccountEvent value)? removeAccount,
    TResult? Function(UserAddCategoryEvent value)? addCategory,
    TResult? Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult? Function(UserRemoveCategoryEvent value)? removeCategory,
  }) {
    return removeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddTransactionEvent value)? addTransaction,
    TResult Function(UserUpdateTransactionEvent value)? updateTransaction,
    TResult Function(UserRemoveTransactionEvent value)? removeTransaction,
    TResult Function(UserAddAccountEvent value)? addAccount,
    TResult Function(UserUpdateAccountEvent value)? updateAccount,
    TResult Function(UserRemoveAccountEvent value)? removeAccount,
    TResult Function(UserAddCategoryEvent value)? addCategory,
    TResult Function(UserUpdateCategoryEvent value)? updateCategory,
    TResult Function(UserRemoveCategoryEvent value)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(this);
    }
    return orElse();
  }
}

abstract class UserRemoveCategoryEvent implements UserEvent {
  const factory UserRemoveCategoryEvent(
          final UserModel user, final CategoryModel category) =
      _$UserRemoveCategoryEvent;

  UserModel get user;
  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$UserRemoveCategoryEventCopyWith<_$UserRemoveCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
