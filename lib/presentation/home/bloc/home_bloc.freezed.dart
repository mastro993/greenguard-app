// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdateRequested updateRequested() {
    return const _UpdateRequested();
  }

  _ValidationModeChanged validationModeChanged(ValidationMode mode) {
    return _ValidationModeChanged(
      mode,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateRequested,
    required TResult Function(ValidationMode mode) validationModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_ValidationModeChanged value)
        validationModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateRequested,
    required TResult Function(ValidationMode mode) validationModeChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_ValidationModeChanged value)
        validationModeChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdateRequestedCopyWith<$Res> {
  factory _$UpdateRequestedCopyWith(
          _UpdateRequested value, $Res Function(_UpdateRequested) then) =
      __$UpdateRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateRequestedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$UpdateRequestedCopyWith<$Res> {
  __$UpdateRequestedCopyWithImpl(
      _UpdateRequested _value, $Res Function(_UpdateRequested) _then)
      : super(_value, (v) => _then(v as _UpdateRequested));

  @override
  _UpdateRequested get _value => super._value as _UpdateRequested;
}

/// @nodoc

class _$_UpdateRequested implements _UpdateRequested {
  const _$_UpdateRequested();

  @override
  String toString() {
    return 'HomeEvent.updateRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateRequested,
    required TResult Function(ValidationMode mode) validationModeChanged,
  }) {
    return updateRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
  }) {
    return updateRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_ValidationModeChanged value)
        validationModeChanged,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateRequested implements HomeEvent {
  const factory _UpdateRequested() = _$_UpdateRequested;
}

/// @nodoc
abstract class _$ValidationModeChangedCopyWith<$Res> {
  factory _$ValidationModeChangedCopyWith(_ValidationModeChanged value,
          $Res Function(_ValidationModeChanged) then) =
      __$ValidationModeChangedCopyWithImpl<$Res>;
  $Res call({ValidationMode mode});
}

/// @nodoc
class __$ValidationModeChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$ValidationModeChangedCopyWith<$Res> {
  __$ValidationModeChangedCopyWithImpl(_ValidationModeChanged _value,
      $Res Function(_ValidationModeChanged) _then)
      : super(_value, (v) => _then(v as _ValidationModeChanged));

  @override
  _ValidationModeChanged get _value => super._value as _ValidationModeChanged;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_ValidationModeChanged(
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ValidationMode,
    ));
  }
}

/// @nodoc

class _$_ValidationModeChanged implements _ValidationModeChanged {
  const _$_ValidationModeChanged(this.mode);

  @override
  final ValidationMode mode;

  @override
  String toString() {
    return 'HomeEvent.validationModeChanged(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationModeChanged &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$ValidationModeChangedCopyWith<_ValidationModeChanged> get copyWith =>
      __$ValidationModeChangedCopyWithImpl<_ValidationModeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateRequested,
    required TResult Function(ValidationMode mode) validationModeChanged,
  }) {
    return validationModeChanged(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
  }) {
    return validationModeChanged?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateRequested,
    TResult Function(ValidationMode mode)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (validationModeChanged != null) {
      return validationModeChanged(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateRequested value) updateRequested,
    required TResult Function(_ValidationModeChanged value)
        validationModeChanged,
  }) {
    return validationModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
  }) {
    return validationModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateRequested value)? updateRequested,
    TResult Function(_ValidationModeChanged value)? validationModeChanged,
    required TResult orElse(),
  }) {
    if (validationModeChanged != null) {
      return validationModeChanged(this);
    }
    return orElse();
  }
}

abstract class _ValidationModeChanged implements HomeEvent {
  const factory _ValidationModeChanged(ValidationMode mode) =
      _$_ValidationModeChanged;

  ValidationMode get mode;
  @JsonKey(ignore: true)
  _$ValidationModeChangedCopyWith<_ValidationModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required bool updateInProgress,
      required ValidationMode validationMode,
      required bool rulesUpdated,
      DateTime? lastUpdateDate}) {
    return _HomeState(
      updateInProgress: updateInProgress,
      validationMode: validationMode,
      rulesUpdated: rulesUpdated,
      lastUpdateDate: lastUpdateDate,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get updateInProgress => throw _privateConstructorUsedError;
  ValidationMode get validationMode => throw _privateConstructorUsedError;
  bool get rulesUpdated => throw _privateConstructorUsedError;
  DateTime? get lastUpdateDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool updateInProgress,
      ValidationMode validationMode,
      bool rulesUpdated,
      DateTime? lastUpdateDate});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? updateInProgress = freezed,
    Object? validationMode = freezed,
    Object? rulesUpdated = freezed,
    Object? lastUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      updateInProgress: updateInProgress == freezed
          ? _value.updateInProgress
          : updateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      validationMode: validationMode == freezed
          ? _value.validationMode
          : validationMode // ignore: cast_nullable_to_non_nullable
              as ValidationMode,
      rulesUpdated: rulesUpdated == freezed
          ? _value.rulesUpdated
          : rulesUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdateDate: lastUpdateDate == freezed
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool updateInProgress,
      ValidationMode validationMode,
      bool rulesUpdated,
      DateTime? lastUpdateDate});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? updateInProgress = freezed,
    Object? validationMode = freezed,
    Object? rulesUpdated = freezed,
    Object? lastUpdateDate = freezed,
  }) {
    return _then(_HomeState(
      updateInProgress: updateInProgress == freezed
          ? _value.updateInProgress
          : updateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      validationMode: validationMode == freezed
          ? _value.validationMode
          : validationMode // ignore: cast_nullable_to_non_nullable
              as ValidationMode,
      rulesUpdated: rulesUpdated == freezed
          ? _value.rulesUpdated
          : rulesUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdateDate: lastUpdateDate == freezed
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.updateInProgress,
      required this.validationMode,
      required this.rulesUpdated,
      this.lastUpdateDate});

  @override
  final bool updateInProgress;
  @override
  final ValidationMode validationMode;
  @override
  final bool rulesUpdated;
  @override
  final DateTime? lastUpdateDate;

  @override
  String toString() {
    return 'HomeState(updateInProgress: $updateInProgress, validationMode: $validationMode, rulesUpdated: $rulesUpdated, lastUpdateDate: $lastUpdateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.updateInProgress, updateInProgress) &&
            const DeepCollectionEquality()
                .equals(other.validationMode, validationMode) &&
            const DeepCollectionEquality()
                .equals(other.rulesUpdated, rulesUpdated) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdateDate, lastUpdateDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(updateInProgress),
      const DeepCollectionEquality().hash(validationMode),
      const DeepCollectionEquality().hash(rulesUpdated),
      const DeepCollectionEquality().hash(lastUpdateDate));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required bool updateInProgress,
      required ValidationMode validationMode,
      required bool rulesUpdated,
      DateTime? lastUpdateDate}) = _$_HomeState;

  @override
  bool get updateInProgress;
  @override
  ValidationMode get validationMode;
  @override
  bool get rulesUpdated;
  @override
  DateTime? get lastUpdateDate;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
