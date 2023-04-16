// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreditCardModel creditCard) add,
    required TResult Function(CreditCardModel creditCard) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreditCardModel creditCard)? add,
    TResult? Function(CreditCardModel creditCard)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreditCardModel creditCard)? add,
    TResult Function(CreditCardModel creditCard)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitialEvent value) init,
    required TResult Function(CreditCardAddEvent value) add,
    required TResult Function(CreditCardRemoveEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitialEvent value)? init,
    TResult? Function(CreditCardAddEvent value)? add,
    TResult? Function(CreditCardRemoveEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitialEvent value)? init,
    TResult Function(CreditCardAddEvent value)? add,
    TResult Function(CreditCardRemoveEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardEventCopyWith<$Res> {
  factory $CreditCardEventCopyWith(
          CreditCardEvent value, $Res Function(CreditCardEvent) then) =
      _$CreditCardEventCopyWithImpl<$Res, CreditCardEvent>;
}

/// @nodoc
class _$CreditCardEventCopyWithImpl<$Res, $Val extends CreditCardEvent>
    implements $CreditCardEventCopyWith<$Res> {
  _$CreditCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditCardInitialEventCopyWith<$Res> {
  factory _$$CreditCardInitialEventCopyWith(_$CreditCardInitialEvent value,
          $Res Function(_$CreditCardInitialEvent) then) =
      __$$CreditCardInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditCardInitialEventCopyWithImpl<$Res>
    extends _$CreditCardEventCopyWithImpl<$Res, _$CreditCardInitialEvent>
    implements _$$CreditCardInitialEventCopyWith<$Res> {
  __$$CreditCardInitialEventCopyWithImpl(_$CreditCardInitialEvent _value,
      $Res Function(_$CreditCardInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditCardInitialEvent implements CreditCardInitialEvent {
  const _$CreditCardInitialEvent();

  @override
  String toString() {
    return 'CreditCardEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditCardInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreditCardModel creditCard) add,
    required TResult Function(CreditCardModel creditCard) remove,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreditCardModel creditCard)? add,
    TResult? Function(CreditCardModel creditCard)? remove,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreditCardModel creditCard)? add,
    TResult Function(CreditCardModel creditCard)? remove,
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
    required TResult Function(CreditCardInitialEvent value) init,
    required TResult Function(CreditCardAddEvent value) add,
    required TResult Function(CreditCardRemoveEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitialEvent value)? init,
    TResult? Function(CreditCardAddEvent value)? add,
    TResult? Function(CreditCardRemoveEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitialEvent value)? init,
    TResult Function(CreditCardAddEvent value)? add,
    TResult Function(CreditCardRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CreditCardInitialEvent implements CreditCardEvent {
  const factory CreditCardInitialEvent() = _$CreditCardInitialEvent;
}

/// @nodoc
abstract class _$$CreditCardAddEventCopyWith<$Res> {
  factory _$$CreditCardAddEventCopyWith(_$CreditCardAddEvent value,
          $Res Function(_$CreditCardAddEvent) then) =
      __$$CreditCardAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardModel creditCard});
}

/// @nodoc
class __$$CreditCardAddEventCopyWithImpl<$Res>
    extends _$CreditCardEventCopyWithImpl<$Res, _$CreditCardAddEvent>
    implements _$$CreditCardAddEventCopyWith<$Res> {
  __$$CreditCardAddEventCopyWithImpl(
      _$CreditCardAddEvent _value, $Res Function(_$CreditCardAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$CreditCardAddEvent(
      null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCardModel,
    ));
  }
}

/// @nodoc

class _$CreditCardAddEvent implements CreditCardAddEvent {
  const _$CreditCardAddEvent(this.creditCard);

  @override
  final CreditCardModel creditCard;

  @override
  String toString() {
    return 'CreditCardEvent.add(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardAddEvent &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardAddEventCopyWith<_$CreditCardAddEvent> get copyWith =>
      __$$CreditCardAddEventCopyWithImpl<_$CreditCardAddEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreditCardModel creditCard) add,
    required TResult Function(CreditCardModel creditCard) remove,
  }) {
    return add(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreditCardModel creditCard)? add,
    TResult? Function(CreditCardModel creditCard)? remove,
  }) {
    return add?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreditCardModel creditCard)? add,
    TResult Function(CreditCardModel creditCard)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitialEvent value) init,
    required TResult Function(CreditCardAddEvent value) add,
    required TResult Function(CreditCardRemoveEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitialEvent value)? init,
    TResult? Function(CreditCardAddEvent value)? add,
    TResult? Function(CreditCardRemoveEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitialEvent value)? init,
    TResult Function(CreditCardAddEvent value)? add,
    TResult Function(CreditCardRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class CreditCardAddEvent implements CreditCardEvent {
  const factory CreditCardAddEvent(final CreditCardModel creditCard) =
      _$CreditCardAddEvent;

  CreditCardModel get creditCard;
  @JsonKey(ignore: true)
  _$$CreditCardAddEventCopyWith<_$CreditCardAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCardRemoveEventCopyWith<$Res> {
  factory _$$CreditCardRemoveEventCopyWith(_$CreditCardRemoveEvent value,
          $Res Function(_$CreditCardRemoveEvent) then) =
      __$$CreditCardRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCardModel creditCard});
}

/// @nodoc
class __$$CreditCardRemoveEventCopyWithImpl<$Res>
    extends _$CreditCardEventCopyWithImpl<$Res, _$CreditCardRemoveEvent>
    implements _$$CreditCardRemoveEventCopyWith<$Res> {
  __$$CreditCardRemoveEventCopyWithImpl(_$CreditCardRemoveEvent _value,
      $Res Function(_$CreditCardRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$CreditCardRemoveEvent(
      null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCardModel,
    ));
  }
}

/// @nodoc

class _$CreditCardRemoveEvent implements CreditCardRemoveEvent {
  const _$CreditCardRemoveEvent(this.creditCard);

  @override
  final CreditCardModel creditCard;

  @override
  String toString() {
    return 'CreditCardEvent.remove(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardRemoveEvent &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardRemoveEventCopyWith<_$CreditCardRemoveEvent> get copyWith =>
      __$$CreditCardRemoveEventCopyWithImpl<_$CreditCardRemoveEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreditCardModel creditCard) add,
    required TResult Function(CreditCardModel creditCard) remove,
  }) {
    return remove(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreditCardModel creditCard)? add,
    TResult? Function(CreditCardModel creditCard)? remove,
  }) {
    return remove?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreditCardModel creditCard)? add,
    TResult Function(CreditCardModel creditCard)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditCardInitialEvent value) init,
    required TResult Function(CreditCardAddEvent value) add,
    required TResult Function(CreditCardRemoveEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditCardInitialEvent value)? init,
    TResult? Function(CreditCardAddEvent value)? add,
    TResult? Function(CreditCardRemoveEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditCardInitialEvent value)? init,
    TResult Function(CreditCardAddEvent value)? add,
    TResult Function(CreditCardRemoveEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class CreditCardRemoveEvent implements CreditCardEvent {
  const factory CreditCardRemoveEvent(final CreditCardModel creditCard) =
      _$CreditCardRemoveEvent;

  CreditCardModel get creditCard;
  @JsonKey(ignore: true)
  _$$CreditCardRemoveEventCopyWith<_$CreditCardRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
