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
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        add,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account, TransactionModel transaction)? add,
    TResult? Function(AccountModel account, TransactionModel transaction)?
        remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account, TransactionModel transaction)? add,
    TResult Function(AccountModel account, TransactionModel transaction)?
        remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(TransactionAddEvent value) add,
    required TResult Function(TransactionRemoveEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(TransactionAddEvent value)? add,
    TResult? Function(TransactionRemoveEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(TransactionAddEvent value)? add,
    TResult Function(TransactionRemoveEvent value)? remove,
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
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        add,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        remove,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account, TransactionModel transaction)? add,
    TResult? Function(AccountModel account, TransactionModel transaction)?
        remove,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account, TransactionModel transaction)? add,
    TResult Function(AccountModel account, TransactionModel transaction)?
        remove,
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
    required TResult Function(TransactionAddEvent value) add,
    required TResult Function(TransactionRemoveEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(TransactionAddEvent value)? add,
    TResult? Function(TransactionRemoveEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(TransactionAddEvent value)? add,
    TResult Function(TransactionRemoveEvent value)? remove,
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
abstract class _$$TransactionAddEventCopyWith<$Res> {
  factory _$$TransactionAddEventCopyWith(_$TransactionAddEvent value,
          $Res Function(_$TransactionAddEvent) then) =
      __$$TransactionAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel account, TransactionModel transaction});
}

/// @nodoc
class __$$TransactionAddEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionAddEvent>
    implements _$$TransactionAddEventCopyWith<$Res> {
  __$$TransactionAddEventCopyWithImpl(
      _$TransactionAddEvent _value, $Res Function(_$TransactionAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? transaction = null,
  }) {
    return _then(_$TransactionAddEvent(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$TransactionAddEvent implements TransactionAddEvent {
  const _$TransactionAddEvent(this.account, this.transaction);

  @override
  final AccountModel account;
  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionEvent.add(account: $account, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAddEvent &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAddEventCopyWith<_$TransactionAddEvent> get copyWith =>
      __$$TransactionAddEventCopyWithImpl<_$TransactionAddEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        add,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        remove,
  }) {
    return add(account, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account, TransactionModel transaction)? add,
    TResult? Function(AccountModel account, TransactionModel transaction)?
        remove,
  }) {
    return add?.call(account, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account, TransactionModel transaction)? add,
    TResult Function(AccountModel account, TransactionModel transaction)?
        remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(account, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(TransactionAddEvent value) add,
    required TResult Function(TransactionRemoveEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(TransactionAddEvent value)? add,
    TResult? Function(TransactionRemoveEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(TransactionAddEvent value)? add,
    TResult Function(TransactionRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class TransactionAddEvent implements TransactionEvent {
  const factory TransactionAddEvent(
          final AccountModel account, final TransactionModel transaction) =
      _$TransactionAddEvent;

  AccountModel get account;
  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$TransactionAddEventCopyWith<_$TransactionAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionRemoveEventCopyWith<$Res> {
  factory _$$TransactionRemoveEventCopyWith(_$TransactionRemoveEvent value,
          $Res Function(_$TransactionRemoveEvent) then) =
      __$$TransactionRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel account, TransactionModel transaction});
}

/// @nodoc
class __$$TransactionRemoveEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionRemoveEvent>
    implements _$$TransactionRemoveEventCopyWith<$Res> {
  __$$TransactionRemoveEventCopyWithImpl(_$TransactionRemoveEvent _value,
      $Res Function(_$TransactionRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? transaction = null,
  }) {
    return _then(_$TransactionRemoveEvent(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$TransactionRemoveEvent implements TransactionRemoveEvent {
  const _$TransactionRemoveEvent(this.account, this.transaction);

  @override
  final AccountModel account;
  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionEvent.remove(account: $account, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionRemoveEvent &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRemoveEventCopyWith<_$TransactionRemoveEvent> get copyWith =>
      __$$TransactionRemoveEventCopyWithImpl<_$TransactionRemoveEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        add,
    required TResult Function(
            AccountModel account, TransactionModel transaction)
        remove,
  }) {
    return remove(account, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account, TransactionModel transaction)? add,
    TResult? Function(AccountModel account, TransactionModel transaction)?
        remove,
  }) {
    return remove?.call(account, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account, TransactionModel transaction)? add,
    TResult Function(AccountModel account, TransactionModel transaction)?
        remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(account, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitialEvent value) init,
    required TResult Function(TransactionAddEvent value) add,
    required TResult Function(TransactionRemoveEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitialEvent value)? init,
    TResult? Function(TransactionAddEvent value)? add,
    TResult? Function(TransactionRemoveEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitialEvent value)? init,
    TResult Function(TransactionAddEvent value)? add,
    TResult Function(TransactionRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class TransactionRemoveEvent implements TransactionEvent {
  const factory TransactionRemoveEvent(
          final AccountModel account, final TransactionModel transaction) =
      _$TransactionRemoveEvent;

  AccountModel get account;
  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$TransactionRemoveEventCopyWith<_$TransactionRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
