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
    required TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)
        payCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserPayCreditCardEvent value) payCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserPayCreditCardEvent value)? payCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserPayCreditCardEvent value)? payCreditCard,
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
    required TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)
        payCreditCard,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
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
    required TResult Function(UserPayCreditCardEvent value) payCreditCard,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserPayCreditCardEvent value)? payCreditCard,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserPayCreditCardEvent value)? payCreditCard,
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
abstract class _$$UserPayCreditCardEventCopyWith<$Res> {
  factory _$$UserPayCreditCardEventCopyWith(_$UserPayCreditCardEvent value,
          $Res Function(_$UserPayCreditCardEvent) then) =
      __$$UserPayCreditCardEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CreditCardTransactionModel> creditCardExpenses, DateTime date});
}

/// @nodoc
class __$$UserPayCreditCardEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserPayCreditCardEvent>
    implements _$$UserPayCreditCardEventCopyWith<$Res> {
  __$$UserPayCreditCardEventCopyWithImpl(_$UserPayCreditCardEvent _value,
      $Res Function(_$UserPayCreditCardEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCardExpenses = null,
    Object? date = null,
  }) {
    return _then(_$UserPayCreditCardEvent(
      null == creditCardExpenses
          ? _value._creditCardExpenses
          : creditCardExpenses // ignore: cast_nullable_to_non_nullable
              as List<CreditCardTransactionModel>,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UserPayCreditCardEvent implements UserPayCreditCardEvent {
  const _$UserPayCreditCardEvent(
      final List<CreditCardTransactionModel> creditCardExpenses, this.date)
      : _creditCardExpenses = creditCardExpenses;

  final List<CreditCardTransactionModel> _creditCardExpenses;
  @override
  List<CreditCardTransactionModel> get creditCardExpenses {
    if (_creditCardExpenses is EqualUnmodifiableListView)
      return _creditCardExpenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCardExpenses);
  }

  @override
  final DateTime date;

  @override
  String toString() {
    return 'UserEvent.payCreditCard(creditCardExpenses: $creditCardExpenses, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPayCreditCardEvent &&
            const DeepCollectionEquality()
                .equals(other._creditCardExpenses, _creditCardExpenses) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_creditCardExpenses), date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPayCreditCardEventCopyWith<_$UserPayCreditCardEvent> get copyWith =>
      __$$UserPayCreditCardEventCopyWithImpl<_$UserPayCreditCardEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)
        payCreditCard,
  }) {
    return payCreditCard(creditCardExpenses, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
  }) {
    return payCreditCard?.call(creditCardExpenses, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<CreditCardTransactionModel> creditCardExpenses, DateTime date)?
        payCreditCard,
    required TResult orElse(),
  }) {
    if (payCreditCard != null) {
      return payCreditCard(creditCardExpenses, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserPayCreditCardEvent value) payCreditCard,
  }) {
    return payCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserPayCreditCardEvent value)? payCreditCard,
  }) {
    return payCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserPayCreditCardEvent value)? payCreditCard,
    required TResult orElse(),
  }) {
    if (payCreditCard != null) {
      return payCreditCard(this);
    }
    return orElse();
  }
}

abstract class UserPayCreditCardEvent implements UserEvent {
  const factory UserPayCreditCardEvent(
      final List<CreditCardTransactionModel> creditCardExpenses,
      final DateTime date) = _$UserPayCreditCardEvent;

  List<CreditCardTransactionModel> get creditCardExpenses;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$UserPayCreditCardEventCopyWith<_$UserPayCreditCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
