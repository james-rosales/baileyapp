import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc(super.initialState) {
    on<VerificationStartTimer>(_verificationstarttimer);
    on<ConfirmCode>(_confirmcode);
    on<VerifiyPressed>(_verifiypressed);
  }

  Future<void> _verificationstarttimer(
      VerificationStartTimer event, Emitter<VerificationState> emit) async {
    var countdownTimer = state.countdowntimer;

    for (int i = countdownTimer; i >= 0; i--) {
      emit(state.copyWith(
        countdowntimer: i,
      ));
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  void _confirmcode(ConfirmCode event, Emitter<VerificationState> emit) {
    emit(
      state.copyWith(
        codestate: event.code,
      ),
    );
  }

  void _verifiypressed(VerifiyPressed event, Emitter<VerificationState> emit) {
    var errorText = state.errorText;

    if (state.codestate == 'abcdef') {
      errorText = 'Verification Code Approved';
    } else {
      errorText = 'Invalid Verification Code';
    }

    emit(state.copyWith(errorText: errorText));
  }
}
