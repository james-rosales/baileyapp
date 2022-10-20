// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_state.freezed.dart';

enum Tabs {
  home,
  files,
  folders,
}

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(Tabs.home) Tabs currentTab,
    @Default(['James Carlo', 'Jofel', 'Snickers', 'Chevz'])
        List<String> namestate,
    @Default(['CCMC', 'Saint Anthony', 'Chong Hua', 'City Health'])
        List<String> hospitalstate,
    @Default([
      'November 23, 2011',
      'December 02. 2021',
      'February 23, 2021',
      'August 31, 1998'
    ])
        List<String> datestate,
    @Default(['2:00 PM', '5:00 PM', '9:00 AM', '2:30 PM'])
        List<String> timestate,
  }) = _DashboardState;
}
