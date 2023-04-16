// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AccountModel> accounts) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AccountModel> accounts)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AccountModel> accounts)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountUpdated value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountUpdated value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountUpdated value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountInitialCopyWith<$Res> {
  factory _$$AccountInitialCopyWith(
          _$AccountInitial value, $Res Function(_$AccountInitial) then) =
      __$$AccountInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountInitial>
    implements _$$AccountInitialCopyWith<$Res> {
  __$$AccountInitialCopyWithImpl(
      _$AccountInitial _value, $Res Function(_$AccountInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountInitial implements AccountInitial {
  const _$AccountInitial();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AccountModel> accounts) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AccountModel> accounts)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AccountModel> accounts)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountUpdated value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountUpdated value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountInitial implements AccountState {
  const factory AccountInitial() = _$AccountInitial;
}

/// @nodoc
abstract class _$$AccountLoadingCopyWith<$Res> {
  factory _$$AccountLoadingCopyWith(
          _$AccountLoading value, $Res Function(_$AccountLoading) then) =
      __$$AccountLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLoading>
    implements _$$AccountLoadingCopyWith<$Res> {
  __$$AccountLoadingCopyWithImpl(
      _$AccountLoading _value, $Res Function(_$AccountLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLoading implements AccountLoading {
  const _$AccountLoading();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AccountModel> accounts) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AccountModel> accounts)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AccountModel> accounts)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountUpdated value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountUpdated value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountLoading implements AccountState {
  const factory AccountLoading() = _$AccountLoading;
}

/// @nodoc
abstract class _$$AccountUpdatedCopyWith<$Res> {
  factory _$$AccountUpdatedCopyWith(
          _$AccountUpdated value, $Res Function(_$AccountUpdated) then) =
      __$$AccountUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountModel> accounts});
}

/// @nodoc
class __$$AccountUpdatedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountUpdated>
    implements _$$AccountUpdatedCopyWith<$Res> {
  __$$AccountUpdatedCopyWithImpl(
      _$AccountUpdated _value, $Res Function(_$AccountUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$AccountUpdated(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
    ));
  }
}

/// @nodoc

class _$AccountUpdated implements AccountUpdated {
  const _$AccountUpdated(final List<AccountModel> accounts)
      : _accounts = accounts;

  final List<AccountModel> _accounts;
  @override
  List<AccountModel> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'AccountState.loaded(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountUpdated &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountUpdatedCopyWith<_$AccountUpdated> get copyWith =>
      __$$AccountUpdatedCopyWithImpl<_$AccountUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AccountModel> accounts) loaded,
  }) {
    return loaded(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AccountModel> accounts)? loaded,
  }) {
    return loaded?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AccountModel> accounts)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountUpdated value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountUpdated value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AccountUpdated implements AccountState {
  const factory AccountUpdated(final List<AccountModel> accounts) =
      _$AccountUpdated;

  List<AccountModel> get accounts;
  @JsonKey(ignore: true)
  _$$AccountUpdatedCopyWith<_$AccountUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
