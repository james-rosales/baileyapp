import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_state.freezed.dart';

@freezed
class VerificationState with _$VerificationState {
  factory VerificationState({
    @Default(60) int countdowtimer,
    @Default(0) int duration,
  }) = _VerificationState;
}
