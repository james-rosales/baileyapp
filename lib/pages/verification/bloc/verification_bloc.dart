import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc(super.initialState) {
    on<VerificationStartTimer>(_verificationstarttimer);
  }

  Future<void> _verificationstarttimer(
      VerificationStartTimer event, Emitter<VerificationState> emit) async {
    var countdownTimer = state.countdowtimer;

    for (int i = countdownTimer; i >= 0; i--) {
      emit(state.copyWith(
        countdowtimer: i,
      ));
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
