// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionUpdated value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionUpdated value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionUpdated value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionInitialCopyWith<$Res> {
  factory _$$TransactionInitialCopyWith(_$TransactionInitial value,
          $Res Function(_$TransactionInitial) then) =
      __$$TransactionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInitialCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionInitial>
    implements _$$TransactionInitialCopyWith<$Res> {
  __$$TransactionInitialCopyWithImpl(
      _$TransactionInitial _value, $Res Function(_$TransactionInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionInitial implements TransactionInitial {
  const _$TransactionInitial();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionUpdated value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionUpdated value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInitial implements TransactionState {
  const factory TransactionInitial() = _$TransactionInitial;
}

/// @nodoc
abstract class _$$TransactionLoadingCopyWith<$Res> {
  factory _$$TransactionLoadingCopyWith(_$TransactionLoading value,
          $Res Function(_$TransactionLoading) then) =
      __$$TransactionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoading>
    implements _$$TransactionLoadingCopyWith<$Res> {
  __$$TransactionLoadingCopyWithImpl(
      _$TransactionLoading _value, $Res Function(_$TransactionLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionLoading implements TransactionLoading {
  const _$TransactionLoading();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionUpdated value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionUpdated value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoading implements TransactionState {
  const factory TransactionLoading() = _$TransactionLoading;
}

/// @nodoc
abstract class _$$TransactionUpdatedCopyWith<$Res> {
  factory _$$TransactionUpdatedCopyWith(_$TransactionUpdated value,
          $Res Function(_$TransactionUpdated) then) =
      __$$TransactionUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionModel> transactions});
}

/// @nodoc
class __$$TransactionUpdatedCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionUpdated>
    implements _$$TransactionUpdatedCopyWith<$Res> {
  __$$TransactionUpdatedCopyWithImpl(
      _$TransactionUpdated _value, $Res Function(_$TransactionUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionUpdated(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$TransactionUpdated implements TransactionUpdated {
  const _$TransactionUpdated(final List<TransactionModel> transactions)
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
    return 'TransactionState.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionUpdated &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionUpdatedCopyWith<_$TransactionUpdated> get copyWith =>
      __$$TransactionUpdatedCopyWithImpl<_$TransactionUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransactionModel> transactions) loaded,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransactionModel> transactions)? loaded,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransactionModel> transactions)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionUpdated value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionUpdated value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionUpdated value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionUpdated implements TransactionState {
  const factory TransactionUpdated(final List<TransactionModel> transactions) =
      _$TransactionUpdated;

  List<TransactionModel> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionUpdatedCopyWith<_$TransactionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
