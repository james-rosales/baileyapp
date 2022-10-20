abstract class MedicalEvent {
  const MedicalEvent();
}

class MedicalTabPressed extends MedicalEvent {
  final int page;

  const MedicalTabPressed(this.page);
}
