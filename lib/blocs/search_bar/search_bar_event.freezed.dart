// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchBarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarInitialEvent value) init,
    required TResult Function(SearchBarSearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitialEvent value)? init,
    TResult? Function(SearchBarSearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitialEvent value)? init,
    TResult Function(SearchBarSearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBarEventCopyWith<$Res> {
  factory $SearchBarEventCopyWith(
          SearchBarEvent value, $Res Function(SearchBarEvent) then) =
      _$SearchBarEventCopyWithImpl<$Res, SearchBarEvent>;
}

/// @nodoc
class _$SearchBarEventCopyWithImpl<$Res, $Val extends SearchBarEvent>
    implements $SearchBarEventCopyWith<$Res> {
  _$SearchBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchBarInitialEventImplCopyWith<$Res> {
  factory _$$SearchBarInitialEventImplCopyWith(
          _$SearchBarInitialEventImpl value,
          $Res Function(_$SearchBarInitialEventImpl) then) =
      __$$SearchBarInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBarInitialEventImplCopyWithImpl<$Res>
    extends _$SearchBarEventCopyWithImpl<$Res, _$SearchBarInitialEventImpl>
    implements _$$SearchBarInitialEventImplCopyWith<$Res> {
  __$$SearchBarInitialEventImplCopyWithImpl(_$SearchBarInitialEventImpl _value,
      $Res Function(_$SearchBarInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBarInitialEventImpl implements SearchBarInitialEvent {
  const _$SearchBarInitialEventImpl();

  @override
  String toString() {
    return 'SearchBarEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) search,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? search,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? search,
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
    required TResult Function(SearchBarInitialEvent value) init,
    required TResult Function(SearchBarSearchEvent value) search,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitialEvent value)? init,
    TResult? Function(SearchBarSearchEvent value)? search,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitialEvent value)? init,
    TResult Function(SearchBarSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SearchBarInitialEvent implements SearchBarEvent {
  const factory SearchBarInitialEvent() = _$SearchBarInitialEventImpl;
}

/// @nodoc
abstract class _$$SearchBarSearchEventImplCopyWith<$Res> {
  factory _$$SearchBarSearchEventImplCopyWith(_$SearchBarSearchEventImpl value,
          $Res Function(_$SearchBarSearchEventImpl) then) =
      __$$SearchBarSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchBarSearchEventImplCopyWithImpl<$Res>
    extends _$SearchBarEventCopyWithImpl<$Res, _$SearchBarSearchEventImpl>
    implements _$$SearchBarSearchEventImplCopyWith<$Res> {
  __$$SearchBarSearchEventImplCopyWithImpl(_$SearchBarSearchEventImpl _value,
      $Res Function(_$SearchBarSearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchBarSearchEventImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBarSearchEventImpl implements SearchBarSearchEvent {
  const _$SearchBarSearchEventImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SearchBarEvent.search(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBarSearchEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBarSearchEventImplCopyWith<_$SearchBarSearchEventImpl>
      get copyWith =>
          __$$SearchBarSearchEventImplCopyWithImpl<_$SearchBarSearchEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String name) search,
  }) {
    return search(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String name)? search,
  }) {
    return search?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchBarInitialEvent value) init,
    required TResult Function(SearchBarSearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchBarInitialEvent value)? init,
    TResult? Function(SearchBarSearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchBarInitialEvent value)? init,
    TResult Function(SearchBarSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchBarSearchEvent implements SearchBarEvent {
  const factory SearchBarSearchEvent(final String name) =
      _$SearchBarSearchEventImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$SearchBarSearchEventImplCopyWith<_$SearchBarSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
