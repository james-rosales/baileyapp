// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  Tabs get currentTab => throw _privateConstructorUsedError;
  List<String> get namestate => throw _privateConstructorUsedError;
  List<String> get hospitalstate => throw _privateConstructorUsedError;
  List<String> get datestate => throw _privateConstructorUsedError;
  List<String> get timestate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {Tabs currentTab,
      List<String> namestate,
      List<String> hospitalstate,
      List<String> datestate,
      List<String> timestate});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? currentTab = freezed,
    Object? namestate = freezed,
    Object? hospitalstate = freezed,
    Object? datestate = freezed,
    Object? timestate = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as Tabs,
      namestate: namestate == freezed
          ? _value.namestate
          : namestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hospitalstate: hospitalstate == freezed
          ? _value.hospitalstate
          : hospitalstate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      datestate: datestate == freezed
          ? _value.datestate
          : datestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestate: timestate == freezed
          ? _value.timestate
          : timestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Tabs currentTab,
      List<String> namestate,
      List<String> hospitalstate,
      List<String> datestate,
      List<String> timestate});
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, (v) => _then(v as _$_DashboardState));

  @override
  _$_DashboardState get _value => super._value as _$_DashboardState;

  @override
  $Res call({
    Object? currentTab = freezed,
    Object? namestate = freezed,
    Object? hospitalstate = freezed,
    Object? datestate = freezed,
    Object? timestate = freezed,
  }) {
    return _then(_$_DashboardState(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as Tabs,
      namestate: namestate == freezed
          ? _value._namestate
          : namestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hospitalstate: hospitalstate == freezed
          ? _value._hospitalstate
          : hospitalstate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      datestate: datestate == freezed
          ? _value._datestate
          : datestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestate: timestate == freezed
          ? _value._timestate
          : timestate // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  _$_DashboardState(
      {this.currentTab = Tabs.home,
      final List<String> namestate = const [
        'James Carlo',
        'Jofel',
        'Snickers',
        'Chevz'
      ],
      final List<String> hospitalstate = const [
        'CCMC',
        'Saint Anthony',
        'Chong Hua',
        'City Health'
      ],
      final List<String> datestate = const [
        'November 23, 2011',
        'December 02. 2021',
        'February 23, 2021',
        'August 31, 1998'
      ],
      final List<String> timestate = const [
        '2:00 PM',
        '5:00 PM',
        '9:00 AM',
        '2:30 PM'
      ]})
      : _namestate = namestate,
        _hospitalstate = hospitalstate,
        _datestate = datestate,
        _timestate = timestate;

  @override
  @JsonKey()
  final Tabs currentTab;
  final List<String> _namestate;
  @override
  @JsonKey()
  List<String> get namestate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_namestate);
  }

  final List<String> _hospitalstate;
  @override
  @JsonKey()
  List<String> get hospitalstate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitalstate);
  }

  final List<String> _datestate;
  @override
  @JsonKey()
  List<String> get datestate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datestate);
  }

  final List<String> _timestate;
  @override
  @JsonKey()
  List<String> get timestate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timestate);
  }

  @override
  String toString() {
    return 'DashboardState(currentTab: $currentTab, namestate: $namestate, hospitalstate: $hospitalstate, datestate: $datestate, timestate: $timestate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            const DeepCollectionEquality()
                .equals(other.currentTab, currentTab) &&
            const DeepCollectionEquality()
                .equals(other._namestate, _namestate) &&
            const DeepCollectionEquality()
                .equals(other._hospitalstate, _hospitalstate) &&
            const DeepCollectionEquality()
                .equals(other._datestate, _datestate) &&
            const DeepCollectionEquality()
                .equals(other._timestate, _timestate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTab),
      const DeepCollectionEquality().hash(_namestate),
      const DeepCollectionEquality().hash(_hospitalstate),
      const DeepCollectionEquality().hash(_datestate),
      const DeepCollectionEquality().hash(_timestate));

  @JsonKey(ignore: true)
  @override
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  factory _DashboardState(
      {final Tabs currentTab,
      final List<String> namestate,
      final List<String> hospitalstate,
      final List<String> datestate,
      final List<String> timestate}) = _$_DashboardState;

  @override
  Tabs get currentTab;
  @override
  List<String> get namestate;
  @override
  List<String> get hospitalstate;
  @override
  List<String> get datestate;
  @override
  List<String> get timestate;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
