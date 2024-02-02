// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreditCardModel> creditCards) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreditCardModel> creditCards)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreditCardModel> creditCards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitial value) initial,
    required TResult Function(CreditCardLoading value) loading,
    required TResult Function(CreditCardUpdated value) loaded,
    required TResult Function(CreditCardError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitial value)? initial,
    TResult? Function(CreditCardLoading value)? loading,
    TResult? Function(CreditCardUpdated value)? loaded,
    TResult? Function(CreditCardError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitial value)? initial,
    TResult Function(CreditCardLoading value)? loading,
    TResult Function(CreditCardUpdated value)? loaded,
    TResult Function(CreditCardError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardStateCopyWith<$Res> {
  factory $CreditCardStateCopyWith(
          CreditCardState value, $Res Function(CreditCardState) then) =
      _$CreditCardStateCopyWithImpl<$Res, CreditCardState>;
}

/// @nodoc
class _$CreditCardStateCopyWithImpl<$Res, $Val extends CreditCardState>
    implements $CreditCardStateCopyWith<$Res> {
  _$CreditCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditCardInitialImplCopyWith<$Res> {
  factory _$$CreditCardInitialImplCopyWith(_$CreditCardInitialImpl value,
          $Res Function(_$CreditCardInitialImpl) then) =
      __$$CreditCardInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditCardInitialImplCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res, _$CreditCardInitialImpl>
    implements _$$CreditCardInitialImplCopyWith<$Res> {
  __$$CreditCardInitialImplCopyWithImpl(_$CreditCardInitialImpl _value,
      $Res Function(_$CreditCardInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditCardInitialImpl implements CreditCardInitial {
  const _$CreditCardInitialImpl();

  @override
  String toString() {
    return 'CreditCardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditCardInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreditCardModel> creditCards) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreditCardModel> creditCards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreditCardModel> creditCards)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(CreditCardInitial value) initial,
    required TResult Function(CreditCardLoading value) loading,
    required TResult Function(CreditCardUpdated value) loaded,
    required TResult Function(CreditCardError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitial value)? initial,
    TResult? Function(CreditCardLoading value)? loading,
    TResult? Function(CreditCardUpdated value)? loaded,
    TResult? Function(CreditCardError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitial value)? initial,
    TResult Function(CreditCardLoading value)? loading,
    TResult Function(CreditCardUpdated value)? loaded,
    TResult Function(CreditCardError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreditCardInitial implements CreditCardState {
  const factory CreditCardInitial() = _$CreditCardInitialImpl;
}

/// @nodoc
abstract class _$$CreditCardLoadingImplCopyWith<$Res> {
  factory _$$CreditCardLoadingImplCopyWith(_$CreditCardLoadingImpl value,
          $Res Function(_$CreditCardLoadingImpl) then) =
      __$$CreditCardLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditCardLoadingImplCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res, _$CreditCardLoadingImpl>
    implements _$$CreditCardLoadingImplCopyWith<$Res> {
  __$$CreditCardLoadingImplCopyWithImpl(_$CreditCardLoadingImpl _value,
      $Res Function(_$CreditCardLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditCardLoadingImpl implements CreditCardLoading {
  const _$CreditCardLoadingImpl();

  @override
  String toString() {
    return 'CreditCardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditCardLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreditCardModel> creditCards) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreditCardModel> creditCards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreditCardModel> creditCards)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(CreditCardInitial value) initial,
    required TResult Function(CreditCardLoading value) loading,
    required TResult Function(CreditCardUpdated value) loaded,
    required TResult Function(CreditCardError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitial value)? initial,
    TResult? Function(CreditCardLoading value)? loading,
    TResult? Function(CreditCardUpdated value)? loaded,
    TResult? Function(CreditCardError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitial value)? initial,
    TResult Function(CreditCardLoading value)? loading,
    TResult Function(CreditCardUpdated value)? loaded,
    TResult Function(CreditCardError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreditCardLoading implements CreditCardState {
  const factory CreditCardLoading() = _$CreditCardLoadingImpl;
}

/// @nodoc
abstract class _$$CreditCardUpdatedImplCopyWith<$Res> {
  factory _$$CreditCardUpdatedImplCopyWith(_$CreditCardUpdatedImpl value,
          $Res Function(_$CreditCardUpdatedImpl) then) =
      __$$CreditCardUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreditCardModel> creditCards});
}

/// @nodoc
class __$$CreditCardUpdatedImplCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res, _$CreditCardUpdatedImpl>
    implements _$$CreditCardUpdatedImplCopyWith<$Res> {
  __$$CreditCardUpdatedImplCopyWithImpl(_$CreditCardUpdatedImpl _value,
      $Res Function(_$CreditCardUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCards = null,
  }) {
    return _then(_$CreditCardUpdatedImpl(
      null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardModel>,
    ));
  }
}

/// @nodoc

class _$CreditCardUpdatedImpl implements CreditCardUpdated {
  const _$CreditCardUpdatedImpl(final List<CreditCardModel> creditCards)
      : _creditCards = creditCards;

  final List<CreditCardModel> _creditCards;
  @override
  List<CreditCardModel> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  @override
  String toString() {
    return 'CreditCardState.loaded(creditCards: $creditCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_creditCards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardUpdatedImplCopyWith<_$CreditCardUpdatedImpl> get copyWith =>
      __$$CreditCardUpdatedImplCopyWithImpl<_$CreditCardUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreditCardModel> creditCards) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(creditCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreditCardModel> creditCards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(creditCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreditCardModel> creditCards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(creditCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitial value) initial,
    required TResult Function(CreditCardLoading value) loading,
    required TResult Function(CreditCardUpdated value) loaded,
    required TResult Function(CreditCardError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitial value)? initial,
    TResult? Function(CreditCardLoading value)? loading,
    TResult? Function(CreditCardUpdated value)? loaded,
    TResult? Function(CreditCardError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitial value)? initial,
    TResult Function(CreditCardLoading value)? loading,
    TResult Function(CreditCardUpdated value)? loaded,
    TResult Function(CreditCardError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CreditCardUpdated implements CreditCardState {
  const factory CreditCardUpdated(final List<CreditCardModel> creditCards) =
      _$CreditCardUpdatedImpl;

  List<CreditCardModel> get creditCards;
  @JsonKey(ignore: true)
  _$$CreditCardUpdatedImplCopyWith<_$CreditCardUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCardErrorImplCopyWith<$Res> {
  factory _$$CreditCardErrorImplCopyWith(_$CreditCardErrorImpl value,
          $Res Function(_$CreditCardErrorImpl) then) =
      __$$CreditCardErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CreditCardErrorImplCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res, _$CreditCardErrorImpl>
    implements _$$CreditCardErrorImplCopyWith<$Res> {
  __$$CreditCardErrorImplCopyWithImpl(
      _$CreditCardErrorImpl _value, $Res Function(_$CreditCardErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreditCardErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreditCardErrorImpl implements CreditCardError {
  const _$CreditCardErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CreditCardState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardErrorImplCopyWith<_$CreditCardErrorImpl> get copyWith =>
      __$$CreditCardErrorImplCopyWithImpl<_$CreditCardErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CreditCardModel> creditCards) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CreditCardModel> creditCards)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CreditCardModel> creditCards)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitial value) initial,
    required TResult Function(CreditCardLoading value) loading,
    required TResult Function(CreditCardUpdated value) loaded,
    required TResult Function(CreditCardError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitial value)? initial,
    TResult? Function(CreditCardLoading value)? loading,
    TResult? Function(CreditCardUpdated value)? loaded,
    TResult? Function(CreditCardError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitial value)? initial,
    TResult Function(CreditCardLoading value)? loading,
    TResult Function(CreditCardUpdated value)? loaded,
    TResult Function(CreditCardError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreditCardError implements CreditCardState {
  const factory CreditCardError(final String error) = _$CreditCardErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CreditCardErrorImplCopyWith<_$CreditCardErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
