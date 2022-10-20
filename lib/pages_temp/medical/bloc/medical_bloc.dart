import 'package:bloc/bloc.dart';

import 'bloc.dart';

class MedicalBloc extends Bloc<MedicalEvent, MedicalState> {
  MedicalBloc(super.initialState) {
    on<MedicalTabPressed>(_tabPressed);
  }

  void _tabPressed(MedicalTabPressed event, Emitter<MedicalState> emit) {
    emit(state.copyWith(
      currentTab: Tabs.values[event.page],
    ));
  }
}
