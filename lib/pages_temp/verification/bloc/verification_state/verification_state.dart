// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_state.freezed.dart';

@freezed
class VerificationState with _$VerificationState {
  factory VerificationState({
    @Default(60) int countdowntimer,
    @Default('') String codestate,
    @Default('') String errorText,
  }) = _VerificationState;
}
