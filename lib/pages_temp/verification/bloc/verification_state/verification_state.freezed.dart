// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerificationState {
  int get countdowntimer => throw _privateConstructorUsedError;
  String get codestate => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res>;
  $Res call({int countdowntimer, String codestate, String errorText});
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  final VerificationState _value;
  // ignore: unused_field
  final $Res Function(VerificationState) _then;

  @override
  $Res call({
    Object? countdowntimer = freezed,
    Object? codestate = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      countdowntimer: countdowntimer == freezed
          ? _value.countdowntimer
          : countdowntimer // ignore: cast_nullable_to_non_nullable
              as int,
      codestate: codestate == freezed
          ? _value.codestate
          : codestate // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VerificationStateCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$$_VerificationStateCopyWith(_$_VerificationState value,
          $Res Function(_$_VerificationState) then) =
      __$$_VerificationStateCopyWithImpl<$Res>;
  @override
  $Res call({int countdowntimer, String codestate, String errorText});
}

/// @nodoc
class __$$_VerificationStateCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res>
    implements _$$_VerificationStateCopyWith<$Res> {
  __$$_VerificationStateCopyWithImpl(
      _$_VerificationState _value, $Res Function(_$_VerificationState) _then)
      : super(_value, (v) => _then(v as _$_VerificationState));

  @override
  _$_VerificationState get _value => super._value as _$_VerificationState;

  @override
  $Res call({
    Object? countdowntimer = freezed,
    Object? codestate = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_$_VerificationState(
      countdowntimer: countdowntimer == freezed
          ? _value.countdowntimer
          : countdowntimer // ignore: cast_nullable_to_non_nullable
              as int,
      codestate: codestate == freezed
          ? _value.codestate
          : codestate // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerificationState implements _VerificationState {
  _$_VerificationState(
      {this.countdowntimer = 60, this.codestate = '', this.errorText = ''});

  @override
  @JsonKey()
  final int countdowntimer;
  @override
  @JsonKey()
  final String codestate;
  @override
  @JsonKey()
  final String errorText;

  @override
  String toString() {
    return 'VerificationState(countdowntimer: $countdowntimer, codestate: $codestate, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationState &&
            const DeepCollectionEquality()
                .equals(other.countdowntimer, countdowntimer) &&
            const DeepCollectionEquality().equals(other.codestate, codestate) &&
            const DeepCollectionEquality().equals(other.errorText, errorText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countdowntimer),
      const DeepCollectionEquality().hash(codestate),
      const DeepCollectionEquality().hash(errorText));

  @JsonKey(ignore: true)
  @override
  _$$_VerificationStateCopyWith<_$_VerificationState> get copyWith =>
      __$$_VerificationStateCopyWithImpl<_$_VerificationState>(
          this, _$identity);
}

abstract class _VerificationState implements VerificationState {
  factory _VerificationState(
      {final int countdowntimer,
      final String codestate,
      final String errorText}) = _$_VerificationState;

  @override
  int get countdowntimer;
  @override
  String get codestate;
  @override
  String get errorText;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationStateCopyWith<_$_VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
