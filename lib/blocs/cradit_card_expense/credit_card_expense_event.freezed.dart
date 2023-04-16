// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_expense_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardModel creditCard) init,
    required TResult Function(CreditCardTransactionModel creditCardExpense) add,
    required TResult Function(CreditCardTransactionModel creditCardExpense)
        remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCardModel creditCard)? init,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardModel creditCard)? init,
    TResult Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult Function(CreditCardTransactionModel creditCardExpense)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardExpenseInitialEvent value) init,
    required TResult Function(CreditCardExpenseAddEvent value) add,
    required TResult Function(CreditCardExpenseRemoveEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardExpenseInitialEvent value)? init,
    TResult? Function(CreditCardExpenseAddEvent value)? add,
    TResult? Function(CreditCardExpenseRemoveEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardExpenseInitialEvent value)? init,
    TResult Function(CreditCardExpenseAddEvent value)? add,
    TResult Function(CreditCardExpenseRemoveEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardExpenseEventCopyWith<$Res> {
  factory $CreditCardExpenseEventCopyWith(CreditCardExpenseEvent value,
          $Res Function(CreditCardExpenseEvent) then) =
      _$CreditCardExpenseEventCopyWithImpl<$Res, CreditCardExpenseEvent>;
}

/// @nodoc
class _$CreditCardExpenseEventCopyWithImpl<$Res,
        $Val extends CreditCardExpenseEvent>
    implements $CreditCardExpenseEventCopyWith<$Res> {
  _$CreditCardExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditCardExpenseInitialEventCopyWith<$Res> {
  factory _$$CreditCardExpenseInitialEventCopyWith(
          _$CreditCardExpenseInitialEvent value,
          $Res Function(_$CreditCardExpenseInitialEvent) then) =
      __$$CreditCardExpenseInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardModel creditCard});
}

/// @nodoc
class __$$CreditCardExpenseInitialEventCopyWithImpl<$Res>
    extends _$CreditCardExpenseEventCopyWithImpl<$Res,
        _$CreditCardExpenseInitialEvent>
    implements _$$CreditCardExpenseInitialEventCopyWith<$Res> {
  __$$CreditCardExpenseInitialEventCopyWithImpl(
      _$CreditCardExpenseInitialEvent _value,
      $Res Function(_$CreditCardExpenseInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$CreditCardExpenseInitialEvent(
      null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCardModel,
    ));
  }
}

/// @nodoc

class _$CreditCardExpenseInitialEvent implements CreditCardExpenseInitialEvent {
  const _$CreditCardExpenseInitialEvent(this.creditCard);

  @override
  final CreditCardModel creditCard;

  @override
  String toString() {
    return 'CreditCardExpenseEvent.init(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardExpenseInitialEvent &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardExpenseInitialEventCopyWith<_$CreditCardExpenseInitialEvent>
      get copyWith => __$$CreditCardExpenseInitialEventCopyWithImpl<
          _$CreditCardExpenseInitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardModel creditCard) init,
    required TResult Function(CreditCardTransactionModel creditCardExpense) add,
    required TResult Function(CreditCardTransactionModel creditCardExpense)
        remove,
  }) {
    return init(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCardModel creditCard)? init,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? remove,
  }) {
    return init?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardModel creditCard)? init,
    TResult Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult Function(CreditCardTransactionModel creditCardExpense)? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardExpenseInitialEvent value) init,
    required TResult Function(CreditCardExpenseAddEvent value) add,
    required TResult Function(CreditCardExpenseRemoveEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardExpenseInitialEvent value)? init,
    TResult? Function(CreditCardExpenseAddEvent value)? add,
    TResult? Function(CreditCardExpenseRemoveEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardExpenseInitialEvent value)? init,
    TResult Function(CreditCardExpenseAddEvent value)? add,
    TResult Function(CreditCardExpenseRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CreditCardExpenseInitialEvent implements CreditCardExpenseEvent {
  const factory CreditCardExpenseInitialEvent(
      final CreditCardModel creditCard) = _$CreditCardExpenseInitialEvent;

  CreditCardModel get creditCard;
  @JsonKey(ignore: true)
  _$$CreditCardExpenseInitialEventCopyWith<_$CreditCardExpenseInitialEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCardExpenseAddEventCopyWith<$Res> {
  factory _$$CreditCardExpenseAddEventCopyWith(
          _$CreditCardExpenseAddEvent value,
          $Res Function(_$CreditCardExpenseAddEvent) then) =
      __$$CreditCardExpenseAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardTransactionModel creditCardExpense});
}

/// @nodoc
class __$$CreditCardExpenseAddEventCopyWithImpl<$Res>
    extends _$CreditCardExpenseEventCopyWithImpl<$Res,
        _$CreditCardExpenseAddEvent>
    implements _$$CreditCardExpenseAddEventCopyWith<$Res> {
  __$$CreditCardExpenseAddEventCopyWithImpl(_$CreditCardExpenseAddEvent _value,
      $Res Function(_$CreditCardExpenseAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCardExpense = null,
  }) {
    return _then(_$CreditCardExpenseAddEvent(
      null == creditCardExpense
          ? _value.creditCardExpense
          : creditCardExpense // ignore: cast_nullable_to_non_nullable
              as CreditCardTransactionModel,
    ));
  }
}

/// @nodoc

class _$CreditCardExpenseAddEvent implements CreditCardExpenseAddEvent {
  const _$CreditCardExpenseAddEvent(this.creditCardExpense);

  @override
  final CreditCardTransactionModel creditCardExpense;

  @override
  String toString() {
    return 'CreditCardExpenseEvent.add(creditCardExpense: $creditCardExpense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardExpenseAddEvent &&
            (identical(other.creditCardExpense, creditCardExpense) ||
                other.creditCardExpense == creditCardExpense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCardExpense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardExpenseAddEventCopyWith<_$CreditCardExpenseAddEvent>
      get copyWith => __$$CreditCardExpenseAddEventCopyWithImpl<
          _$CreditCardExpenseAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardModel creditCard) init,
    required TResult Function(CreditCardTransactionModel creditCardExpense) add,
    required TResult Function(CreditCardTransactionModel creditCardExpense)
        remove,
  }) {
    return add(creditCardExpense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCardModel creditCard)? init,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? remove,
  }) {
    return add?.call(creditCardExpense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardModel creditCard)? init,
    TResult Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult Function(CreditCardTransactionModel creditCardExpense)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(creditCardExpense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardExpenseInitialEvent value) init,
    required TResult Function(CreditCardExpenseAddEvent value) add,
    required TResult Function(CreditCardExpenseRemoveEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardExpenseInitialEvent value)? init,
    TResult? Function(CreditCardExpenseAddEvent value)? add,
    TResult? Function(CreditCardExpenseRemoveEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardExpenseInitialEvent value)? init,
    TResult Function(CreditCardExpenseAddEvent value)? add,
    TResult Function(CreditCardExpenseRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CreditCardExpenseAddEvent implements CreditCardExpenseEvent {
  const factory CreditCardExpenseAddEvent(
          final CreditCardTransactionModel creditCardExpense) =
      _$CreditCardExpenseAddEvent;

  CreditCardTransactionModel get creditCardExpense;
  @JsonKey(ignore: true)
  _$$CreditCardExpenseAddEventCopyWith<_$CreditCardExpenseAddEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCardExpenseRemoveEventCopyWith<$Res> {
  factory _$$CreditCardExpenseRemoveEventCopyWith(
          _$CreditCardExpenseRemoveEvent value,
          $Res Function(_$CreditCardExpenseRemoveEvent) then) =
      __$$CreditCardExpenseRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardTransactionModel creditCardExpense});
}

/// @nodoc
class __$$CreditCardExpenseRemoveEventCopyWithImpl<$Res>
    extends _$CreditCardExpenseEventCopyWithImpl<$Res,
        _$CreditCardExpenseRemoveEvent>
    implements _$$CreditCardExpenseRemoveEventCopyWith<$Res> {
  __$$CreditCardExpenseRemoveEventCopyWithImpl(
      _$CreditCardExpenseRemoveEvent _value,
      $Res Function(_$CreditCardExpenseRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCardExpense = null,
  }) {
    return _then(_$CreditCardExpenseRemoveEvent(
      null == creditCardExpense
          ? _value.creditCardExpense
          : creditCardExpense // ignore: cast_nullable_to_non_nullable
              as CreditCardTransactionModel,
    ));
  }
}

/// @nodoc

class _$CreditCardExpenseRemoveEvent implements CreditCardExpenseRemoveEvent {
  const _$CreditCardExpenseRemoveEvent(this.creditCardExpense);

  @override
  final CreditCardTransactionModel creditCardExpense;

  @override
  String toString() {
    return 'CreditCardExpenseEvent.remove(creditCardExpense: $creditCardExpense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardExpenseRemoveEvent &&
            (identical(other.creditCardExpense, creditCardExpense) ||
                other.creditCardExpense == creditCardExpense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCardExpense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardExpenseRemoveEventCopyWith<_$CreditCardExpenseRemoveEvent>
      get copyWith => __$$CreditCardExpenseRemoveEventCopyWithImpl<
          _$CreditCardExpenseRemoveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardModel creditCard) init,
    required TResult Function(CreditCardTransactionModel creditCardExpense) add,
    required TResult Function(CreditCardTransactionModel creditCardExpense)
        remove,
  }) {
    return remove(creditCardExpense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCardModel creditCard)? init,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult? Function(CreditCardTransactionModel creditCardExpense)? remove,
  }) {
    return remove?.call(creditCardExpense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardModel creditCard)? init,
    TResult Function(CreditCardTransactionModel creditCardExpense)? add,
    TResult Function(CreditCardTransactionModel creditCardExpense)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(creditCardExpense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardExpenseInitialEvent value) init,
    required TResult Function(CreditCardExpenseAddEvent value) add,
    required TResult Function(CreditCardExpenseRemoveEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardExpenseInitialEvent value)? init,
    TResult? Function(CreditCardExpenseAddEvent value)? add,
    TResult? Function(CreditCardExpenseRemoveEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardExpenseInitialEvent value)? init,
    TResult Function(CreditCardExpenseAddEvent value)? add,
    TResult Function(CreditCardExpenseRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class CreditCardExpenseRemoveEvent implements CreditCardExpenseEvent {
  const factory CreditCardExpenseRemoveEvent(
          final CreditCardTransactionModel creditCardExpense) =
      _$CreditCardExpenseRemoveEvent;

  CreditCardTransactionModel get creditCardExpense;
  @JsonKey(ignore: true)
  _$$CreditCardExpenseRemoveEventCopyWith<_$CreditCardExpenseRemoveEvent>
      get copyWith => throw _privateConstructorUsedError;
}
