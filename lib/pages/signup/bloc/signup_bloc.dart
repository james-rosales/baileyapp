import 'package:bloc/bloc.dart';

import 'bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(super.initialState) {
    on<ObscurePressed>(_obscurePressed);
  }

  void _obscurePressed(ObscurePressed event, Emitter<SignupState> emit) {
    var obscureEvent = event.obscure;
    emit(
      state.copyWith(
        obscureState: obscureEvent != obscureEvent,
      ),
    );
  }
}
