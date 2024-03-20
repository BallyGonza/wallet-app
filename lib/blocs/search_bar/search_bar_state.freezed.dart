// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarInitial value) initial,
    required TResult Function(SearchBarLoading value) loading,
    required TResult Function(SearchBarLoaded value) loaded,
    required TResult Function(SearchBarError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitial value)? initial,
    TResult? Function(SearchBarLoading value)? loading,
    TResult? Function(SearchBarLoaded value)? loaded,
    TResult? Function(SearchBarError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitial value)? initial,
    TResult Function(SearchBarLoading value)? loading,
    TResult Function(SearchBarLoaded value)? loaded,
    TResult Function(SearchBarError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBarStateCopyWith<$Res> {
  factory $SearchBarStateCopyWith(
          SearchBarState value, $Res Function(SearchBarState) then) =
      _$SearchBarStateCopyWithImpl<$Res, SearchBarState>;
}

/// @nodoc
class _$SearchBarStateCopyWithImpl<$Res, $Val extends SearchBarState>
    implements $SearchBarStateCopyWith<$Res> {
  _$SearchBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchBarInitialImplCopyWith<$Res> {
  factory _$$SearchBarInitialImplCopyWith(_$SearchBarInitialImpl value,
          $Res Function(_$SearchBarInitialImpl) then) =
      __$$SearchBarInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBarInitialImplCopyWithImpl<$Res>
    extends _$SearchBarStateCopyWithImpl<$Res, _$SearchBarInitialImpl>
    implements _$$SearchBarInitialImplCopyWith<$Res> {
  __$$SearchBarInitialImplCopyWithImpl(_$SearchBarInitialImpl _value,
      $Res Function(_$SearchBarInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBarInitialImpl implements SearchBarInitial {
  const _$SearchBarInitialImpl();

  @override
  String toString() {
    return 'SearchBarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchBarInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(SearchBarInitial value) initial,
    required TResult Function(SearchBarLoading value) loading,
    required TResult Function(SearchBarLoaded value) loaded,
    required TResult Function(SearchBarError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitial value)? initial,
    TResult? Function(SearchBarLoading value)? loading,
    TResult? Function(SearchBarLoaded value)? loaded,
    TResult? Function(SearchBarError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitial value)? initial,
    TResult Function(SearchBarLoading value)? loading,
    TResult Function(SearchBarLoaded value)? loaded,
    TResult Function(SearchBarError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchBarInitial implements SearchBarState {
  const factory SearchBarInitial() = _$SearchBarInitialImpl;
}

/// @nodoc
abstract class _$$SearchBarLoadingImplCopyWith<$Res> {
  factory _$$SearchBarLoadingImplCopyWith(_$SearchBarLoadingImpl value,
          $Res Function(_$SearchBarLoadingImpl) then) =
      __$$SearchBarLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBarLoadingImplCopyWithImpl<$Res>
    extends _$SearchBarStateCopyWithImpl<$Res, _$SearchBarLoadingImpl>
    implements _$$SearchBarLoadingImplCopyWith<$Res> {
  __$$SearchBarLoadingImplCopyWithImpl(_$SearchBarLoadingImpl _value,
      $Res Function(_$SearchBarLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBarLoadingImpl implements SearchBarLoading {
  const _$SearchBarLoadingImpl();

  @override
  String toString() {
    return 'SearchBarState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchBarLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(SearchBarInitial value) initial,
    required TResult Function(SearchBarLoading value) loading,
    required TResult Function(SearchBarLoaded value) loaded,
    required TResult Function(SearchBarError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitial value)? initial,
    TResult? Function(SearchBarLoading value)? loading,
    TResult? Function(SearchBarLoaded value)? loaded,
    TResult? Function(SearchBarError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitial value)? initial,
    TResult Function(SearchBarLoading value)? loading,
    TResult Function(SearchBarLoaded value)? loaded,
    TResult Function(SearchBarError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchBarLoading implements SearchBarState {
  const factory SearchBarLoading() = _$SearchBarLoadingImpl;
}

/// @nodoc
abstract class _$$SearchBarLoadedImplCopyWith<$Res> {
  factory _$$SearchBarLoadedImplCopyWith(_$SearchBarLoadedImpl value,
          $Res Function(_$SearchBarLoadedImpl) then) =
      __$$SearchBarLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionModel> transactions});
}

/// @nodoc
class __$$SearchBarLoadedImplCopyWithImpl<$Res>
    extends _$SearchBarStateCopyWithImpl<$Res, _$SearchBarLoadedImpl>
    implements _$$SearchBarLoadedImplCopyWith<$Res> {
  __$$SearchBarLoadedImplCopyWithImpl(
      _$SearchBarLoadedImpl _value, $Res Function(_$SearchBarLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$SearchBarLoadedImpl(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$SearchBarLoadedImpl implements SearchBarLoaded {
  const _$SearchBarLoadedImpl(final List<TransactionModel> transactions)
      : _transactions = transactions;

  final List<TransactionModel> _transactions;
  @override
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'SearchBarState.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarLoadedImplCopyWith<_$SearchBarLoadedImpl> get copyWith =>
      __$$SearchBarLoadedImplCopyWithImpl<_$SearchBarLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarInitial value) initial,
    required TResult Function(SearchBarLoading value) loading,
    required TResult Function(SearchBarLoaded value) loaded,
    required TResult Function(SearchBarError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitial value)? initial,
    TResult? Function(SearchBarLoading value)? loading,
    TResult? Function(SearchBarLoaded value)? loaded,
    TResult? Function(SearchBarError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitial value)? initial,
    TResult Function(SearchBarLoading value)? loading,
    TResult Function(SearchBarLoaded value)? loaded,
    TResult Function(SearchBarError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchBarLoaded implements SearchBarState {
  const factory SearchBarLoaded(final List<TransactionModel> transactions) =
      _$SearchBarLoadedImpl;

  List<TransactionModel> get transactions;
  @JsonKey(ignore: true)
  _$$SearchBarLoadedImplCopyWith<_$SearchBarLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchBarErrorImplCopyWith<$Res> {
  factory _$$SearchBarErrorImplCopyWith(_$SearchBarErrorImpl value,
          $Res Function(_$SearchBarErrorImpl) then) =
      __$$SearchBarErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchBarErrorImplCopyWithImpl<$Res>
    extends _$SearchBarStateCopyWithImpl<$Res, _$SearchBarErrorImpl>
    implements _$$SearchBarErrorImplCopyWith<$Res> {
  __$$SearchBarErrorImplCopyWithImpl(
      _$SearchBarErrorImpl _value, $Res Function(_$SearchBarErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchBarErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBarErrorImpl implements SearchBarError {
  const _$SearchBarErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchBarState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarErrorImplCopyWith<_$SearchBarErrorImpl> get copyWith =>
      __$$SearchBarErrorImplCopyWithImpl<_$SearchBarErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarInitial value) initial,
    required TResult Function(SearchBarLoading value) loading,
    required TResult Function(SearchBarLoaded value) loaded,
    required TResult Function(SearchBarError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitial value)? initial,
    TResult? Function(SearchBarLoading value)? loading,
    TResult? Function(SearchBarLoaded value)? loaded,
    TResult? Function(SearchBarError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitial value)? initial,
    TResult Function(SearchBarLoading value)? loading,
    TResult Function(SearchBarLoaded value)? loaded,
    TResult Function(SearchBarError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchBarError implements SearchBarState {
  const factory SearchBarError(final String message) = _$SearchBarErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchBarErrorImplCopyWith<_$SearchBarErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
