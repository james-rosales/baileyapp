// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicalState {
  Tabs get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicalStateCopyWith<MedicalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalStateCopyWith<$Res> {
  factory $MedicalStateCopyWith(
          MedicalState value, $Res Function(MedicalState) then) =
      _$MedicalStateCopyWithImpl<$Res>;
  $Res call({Tabs currentTab});
}

/// @nodoc
class _$MedicalStateCopyWithImpl<$Res> implements $MedicalStateCopyWith<$Res> {
  _$MedicalStateCopyWithImpl(this._value, this._then);

  final MedicalState _value;
  // ignore: unused_field
  final $Res Function(MedicalState) _then;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as Tabs,
    ));
  }
}

/// @nodoc
abstract class _$$_MedicalStateCopyWith<$Res>
    implements $MedicalStateCopyWith<$Res> {
  factory _$$_MedicalStateCopyWith(
          _$_MedicalState value, $Res Function(_$_MedicalState) then) =
      __$$_MedicalStateCopyWithImpl<$Res>;
  @override
  $Res call({Tabs currentTab});
}

/// @nodoc
class __$$_MedicalStateCopyWithImpl<$Res>
    extends _$MedicalStateCopyWithImpl<$Res>
    implements _$$_MedicalStateCopyWith<$Res> {
  __$$_MedicalStateCopyWithImpl(
      _$_MedicalState _value, $Res Function(_$_MedicalState) _then)
      : super(_value, (v) => _then(v as _$_MedicalState));

  @override
  _$_MedicalState get _value => super._value as _$_MedicalState;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_$_MedicalState(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as Tabs,
    ));
  }
}

/// @nodoc

class _$_MedicalState implements _MedicalState {
  _$_MedicalState({this.currentTab = Tabs.home});

  @override
  @JsonKey()
  final Tabs currentTab;

  @override
  String toString() {
    return 'MedicalState(currentTab: $currentTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalState &&
            const DeepCollectionEquality()
                .equals(other.currentTab, currentTab));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(currentTab));

  @JsonKey(ignore: true)
  @override
  _$$_MedicalStateCopyWith<_$_MedicalState> get copyWith =>
      __$$_MedicalStateCopyWithImpl<_$_MedicalState>(this, _$identity);
}

abstract class _MedicalState implements MedicalState {
  factory _MedicalState({final Tabs currentTab}) = _$_MedicalState;

  @override
  Tabs get currentTab;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalStateCopyWith<_$_MedicalState> get copyWith =>
      throw _privateConstructorUsedError;
}
