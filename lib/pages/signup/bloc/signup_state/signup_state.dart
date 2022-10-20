// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  factory SignupState({
    @Default(false) bool obscureState,
  }) = _SignupState;
}
