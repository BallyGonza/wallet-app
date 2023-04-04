// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionInitialEventCopyWith<$Res> {
  factory _$$TransactionInitialEventCopyWith(_$TransactionInitialEvent value,
          $Res Function(_$TransactionInitialEvent) then) =
      __$$TransactionInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInitialEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionInitialEvent>
    implements _$$TransactionInitialEventCopyWith<$Res> {
  __$$TransactionInitialEventCopyWithImpl(_$TransactionInitialEvent _value,
      $Res Function(_$TransactionInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionInitialEvent implements TransactionInitialEvent {
  const _$TransactionInitialEvent();

  @override
  String toString() {
    return 'TransactionEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
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
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TransactionInitialEvent implements TransactionEvent {
  const factory TransactionInitialEvent() = _$TransactionInitialEvent;
}

/// @nodoc
abstract class _$$AddTransactionEventCopyWith<$Res> {
  factory _$$AddTransactionEventCopyWith(_$AddTransactionEvent value,
          $Res Function(_$AddTransactionEvent) then) =
      __$$AddTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$AddTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AddTransactionEvent>
    implements _$$AddTransactionEventCopyWith<$Res> {
  __$$AddTransactionEventCopyWithImpl(
      _$AddTransactionEvent _value, $Res Function(_$AddTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$AddTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$AddTransactionEvent implements AddTransactionEvent {
  const _$AddTransactionEvent(this.transaction);

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionEvent.addTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionEventCopyWith<_$AddTransactionEvent> get copyWith =>
      __$$AddTransactionEventCopyWithImpl<_$AddTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) {
    return addTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) {
    return addTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddTransactionEvent implements TransactionEvent {
  const factory AddTransactionEvent(final TransactionModel transaction) =
      _$AddTransactionEvent;

  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$AddTransactionEventCopyWith<_$AddTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionEventCopyWith<$Res> {
  factory _$$UpdateTransactionEventCopyWith(_$UpdateTransactionEvent value,
          $Res Function(_$UpdateTransactionEvent) then) =
      __$$UpdateTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$UpdateTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$UpdateTransactionEvent>
    implements _$$UpdateTransactionEventCopyWith<$Res> {
  __$$UpdateTransactionEventCopyWithImpl(_$UpdateTransactionEvent _value,
      $Res Function(_$UpdateTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$UpdateTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionEvent implements UpdateTransactionEvent {
  const _$UpdateTransactionEvent(this.transaction);

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionEvent.updateTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionEventCopyWith<_$UpdateTransactionEvent> get copyWith =>
      __$$UpdateTransactionEventCopyWithImpl<_$UpdateTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) {
    return updateTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) {
    return updateTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class UpdateTransactionEvent implements TransactionEvent {
  const factory UpdateTransactionEvent(final TransactionModel transaction) =
      _$UpdateTransactionEvent;

  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$UpdateTransactionEventCopyWith<_$UpdateTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTransactionEventCopyWith<$Res> {
  factory _$$RemoveTransactionEventCopyWith(_$RemoveTransactionEvent value,
          $Res Function(_$RemoveTransactionEvent) then) =
      __$$RemoveTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$RemoveTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$RemoveTransactionEvent>
    implements _$$RemoveTransactionEventCopyWith<$Res> {
  __$$RemoveTransactionEventCopyWithImpl(_$RemoveTransactionEvent _value,
      $Res Function(_$RemoveTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$RemoveTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$RemoveTransactionEvent implements RemoveTransactionEvent {
  const _$RemoveTransactionEvent(this.transaction);

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionEvent.removeTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTransactionEventCopyWith<_$RemoveTransactionEvent> get copyWith =>
      __$$RemoveTransactionEventCopyWithImpl<_$RemoveTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) {
    return removeTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) {
    return removeTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (removeTransaction != null) {
      return removeTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) {
    return removeTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) {
    return removeTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (removeTransaction != null) {
      return removeTransaction(this);
    }
    return orElse();
  }
}

abstract class RemoveTransactionEvent implements TransactionEvent {
  const factory RemoveTransactionEvent(final TransactionModel transaction) =
      _$RemoveTransactionEvent;

  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$RemoveTransactionEventCopyWith<_$RemoveTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllTransactionsEventCopyWith<$Res> {
  factory _$$RemoveAllTransactionsEventCopyWith(
          _$RemoveAllTransactionsEvent value,
          $Res Function(_$RemoveAllTransactionsEvent) then) =
      __$$RemoveAllTransactionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllTransactionsEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$RemoveAllTransactionsEvent>
    implements _$$RemoveAllTransactionsEventCopyWith<$Res> {
  __$$RemoveAllTransactionsEventCopyWithImpl(
      _$RemoveAllTransactionsEvent _value,
      $Res Function(_$RemoveAllTransactionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllTransactionsEvent implements RemoveAllTransactionsEvent {
  const _$RemoveAllTransactionsEvent();

  @override
  String toString() {
    return 'TransactionEvent.removeAllTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllTransactionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
    required TResult Function(TransactionModel transaction) removeTransaction,
    required TResult Function() removeAllTransactions,
  }) {
    return removeAllTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
    TResult? Function(TransactionModel transaction)? removeTransaction,
    TResult? Function()? removeAllTransactions,
  }) {
    return removeAllTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    TResult Function(TransactionModel transaction)? removeTransaction,
    TResult Function()? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (removeAllTransactions != null) {
      return removeAllTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(AddTransactionEvent value) addTransaction,
    required TResult Function(UpdateTransactionEvent value) updateTransaction,
    required TResult Function(RemoveTransactionEvent value) removeTransaction,
    required TResult Function(RemoveAllTransactionsEvent value)
        removeAllTransactions,
  }) {
    return removeAllTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(AddTransactionEvent value)? addTransaction,
    TResult? Function(UpdateTransactionEvent value)? updateTransaction,
    TResult? Function(RemoveTransactionEvent value)? removeTransaction,
    TResult? Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
  }) {
    return removeAllTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(AddTransactionEvent value)? addTransaction,
    TResult Function(UpdateTransactionEvent value)? updateTransaction,
    TResult Function(RemoveTransactionEvent value)? removeTransaction,
    TResult Function(RemoveAllTransactionsEvent value)? removeAllTransactions,
    required TResult orElse(),
  }) {
    if (removeAllTransactions != null) {
      return removeAllTransactions(this);
    }
    return orElse();
  }
}

abstract class RemoveAllTransactionsEvent implements TransactionEvent {
  const factory RemoveAllTransactionsEvent() = _$RemoveAllTransactionsEvent;
}
