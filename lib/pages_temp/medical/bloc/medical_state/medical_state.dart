// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'medical_state.freezed.dart';

enum Tabs {
  home,
  files,
  folders,
}

@freezed
class MedicalState with _$MedicalState {
  factory MedicalState({
    @Default(Tabs.home) Tabs currentTab,
  }) = _MedicalState;
}
