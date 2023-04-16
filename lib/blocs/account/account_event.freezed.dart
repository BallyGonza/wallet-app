// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AccountModel account) add,
    required TResult Function(AccountModel account) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account)? add,
    TResult? Function(AccountModel account)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account)? add,
    TResult Function(AccountModel account)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialEvent value) init,
    required TResult Function(AccountAddEvent value) add,
    required TResult Function(AccountRemoveEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialEvent value)? init,
    TResult? Function(AccountAddEvent value)? add,
    TResult? Function(AccountRemoveEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialEvent value)? init,
    TResult Function(AccountAddEvent value)? add,
    TResult Function(AccountRemoveEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountInitialEventCopyWith<$Res> {
  factory _$$AccountInitialEventCopyWith(_$AccountInitialEvent value,
          $Res Function(_$AccountInitialEvent) then) =
      __$$AccountInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountInitialEvent>
    implements _$$AccountInitialEventCopyWith<$Res> {
  __$$AccountInitialEventCopyWithImpl(
      _$AccountInitialEvent _value, $Res Function(_$AccountInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountInitialEvent implements AccountInitialEvent {
  const _$AccountInitialEvent();

  @override
  String toString() {
    return 'AccountEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AccountModel account) add,
    required TResult Function(AccountModel account) remove,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account)? add,
    TResult? Function(AccountModel account)? remove,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account)? add,
    TResult Function(AccountModel account)? remove,
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
    required TResult Function(AccountInitialEvent value) init,
    required TResult Function(AccountAddEvent value) add,
    required TResult Function(AccountRemoveEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialEvent value)? init,
    TResult? Function(AccountAddEvent value)? add,
    TResult? Function(AccountRemoveEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialEvent value)? init,
    TResult Function(AccountAddEvent value)? add,
    TResult Function(AccountRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AccountInitialEvent implements AccountEvent {
  const factory AccountInitialEvent() = _$AccountInitialEvent;
}

/// @nodoc
abstract class _$$AccountAddEventCopyWith<$Res> {
  factory _$$AccountAddEventCopyWith(
          _$AccountAddEvent value, $Res Function(_$AccountAddEvent) then) =
      __$$AccountAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel account});
}

/// @nodoc
class __$$AccountAddEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountAddEvent>
    implements _$$AccountAddEventCopyWith<$Res> {
  __$$AccountAddEventCopyWithImpl(
      _$AccountAddEvent _value, $Res Function(_$AccountAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountAddEvent(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc

class _$AccountAddEvent implements AccountAddEvent {
  const _$AccountAddEvent(this.account);

  @override
  final AccountModel account;

  @override
  String toString() {
    return 'AccountEvent.add(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAddEvent &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAddEventCopyWith<_$AccountAddEvent> get copyWith =>
      __$$AccountAddEventCopyWithImpl<_$AccountAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AccountModel account) add,
    required TResult Function(AccountModel account) remove,
  }) {
    return add(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account)? add,
    TResult? Function(AccountModel account)? remove,
  }) {
    return add?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account)? add,
    TResult Function(AccountModel account)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialEvent value) init,
    required TResult Function(AccountAddEvent value) add,
    required TResult Function(AccountRemoveEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialEvent value)? init,
    TResult? Function(AccountAddEvent value)? add,
    TResult? Function(AccountRemoveEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialEvent value)? init,
    TResult Function(AccountAddEvent value)? add,
    TResult Function(AccountRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AccountAddEvent implements AccountEvent {
  const factory AccountAddEvent(final AccountModel account) = _$AccountAddEvent;

  AccountModel get account;
  @JsonKey(ignore: true)
  _$$AccountAddEventCopyWith<_$AccountAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountRemoveEventCopyWith<$Res> {
  factory _$$AccountRemoveEventCopyWith(_$AccountRemoveEvent value,
          $Res Function(_$AccountRemoveEvent) then) =
      __$$AccountRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel account});
}

/// @nodoc
class __$$AccountRemoveEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AccountRemoveEvent>
    implements _$$AccountRemoveEventCopyWith<$Res> {
  __$$AccountRemoveEventCopyWithImpl(
      _$AccountRemoveEvent _value, $Res Function(_$AccountRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountRemoveEvent(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc

class _$AccountRemoveEvent implements AccountRemoveEvent {
  const _$AccountRemoveEvent(this.account);

  @override
  final AccountModel account;

  @override
  String toString() {
    return 'AccountEvent.remove(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRemoveEvent &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRemoveEventCopyWith<_$AccountRemoveEvent> get copyWith =>
      __$$AccountRemoveEventCopyWithImpl<_$AccountRemoveEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AccountModel account) add,
    required TResult Function(AccountModel account) remove,
  }) {
    return remove(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AccountModel account)? add,
    TResult? Function(AccountModel account)? remove,
  }) {
    return remove?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AccountModel account)? add,
    TResult Function(AccountModel account)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialEvent value) init,
    required TResult Function(AccountAddEvent value) add,
    required TResult Function(AccountRemoveEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialEvent value)? init,
    TResult? Function(AccountAddEvent value)? add,
    TResult? Function(AccountRemoveEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialEvent value)? init,
    TResult Function(AccountAddEvent value)? add,
    TResult Function(AccountRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class AccountRemoveEvent implements AccountEvent {
  const factory AccountRemoveEvent(final AccountModel account) =
      _$AccountRemoveEvent;

  AccountModel get account;
  @JsonKey(ignore: true)
  _$$AccountRemoveEventCopyWith<_$AccountRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
