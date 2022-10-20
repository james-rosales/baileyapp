abstract class VerificationEvent {
  const VerificationEvent();
}

class VerificationStartTimer extends VerificationEvent {
  const VerificationStartTimer();
}

class ConfirmCode extends VerificationEvent {
  final String code;
  const ConfirmCode(this.code);
}

class VerifiyPressed extends VerificationEvent {
  const VerifiyPressed();
}
