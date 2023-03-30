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
    required TResult Function() add,
    required TResult Function() remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddEvent value) add,
    required TResult Function(UserSubtractEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddEvent value)? add,
    TResult? Function(UserSubtractEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddEvent value)? add,
    TResult Function(UserSubtractEvent value)? remove,
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
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
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
    required TResult Function(UserAddEvent value) add,
    required TResult Function(UserSubtractEvent value) remove,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddEvent value)? add,
    TResult? Function(UserSubtractEvent value)? remove,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddEvent value)? add,
    TResult Function(UserSubtractEvent value)? remove,
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
abstract class _$$UserAddEventCopyWith<$Res> {
  factory _$$UserAddEventCopyWith(
          _$UserAddEvent value, $Res Function(_$UserAddEvent) then) =
      __$$UserAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAddEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserAddEvent>
    implements _$$UserAddEventCopyWith<$Res> {
  __$$UserAddEventCopyWithImpl(
      _$UserAddEvent _value, $Res Function(_$UserAddEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAddEvent implements UserAddEvent {
  const _$UserAddEvent();

  @override
  String toString() {
    return 'UserEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAddEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddEvent value) add,
    required TResult Function(UserSubtractEvent value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddEvent value)? add,
    TResult? Function(UserSubtractEvent value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddEvent value)? add,
    TResult Function(UserSubtractEvent value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class UserAddEvent implements UserEvent {
  const factory UserAddEvent() = _$UserAddEvent;
}

/// @nodoc
abstract class _$$UserSubtractEventCopyWith<$Res> {
  factory _$$UserSubtractEventCopyWith(
          _$UserSubtractEvent value, $Res Function(_$UserSubtractEvent) then) =
      __$$UserSubtractEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSubtractEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserSubtractEvent>
    implements _$$UserSubtractEventCopyWith<$Res> {
  __$$UserSubtractEventCopyWithImpl(
      _$UserSubtractEvent _value, $Res Function(_$UserSubtractEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserSubtractEvent implements UserSubtractEvent {
  const _$UserSubtractEvent();

  @override
  String toString() {
    return 'UserEvent.remove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserSubtractEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() add,
    required TResult Function() remove,
  }) {
    return remove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? add,
    TResult? Function()? remove,
  }) {
    return remove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? add,
    TResult Function()? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialEvent value) init,
    required TResult Function(UserAddEvent value) add,
    required TResult Function(UserSubtractEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialEvent value)? init,
    TResult? Function(UserAddEvent value)? add,
    TResult? Function(UserSubtractEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialEvent value)? init,
    TResult Function(UserAddEvent value)? add,
    TResult Function(UserSubtractEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class UserSubtractEvent implements UserEvent {
  const factory UserSubtractEvent() = _$UserSubtractEvent;
}
