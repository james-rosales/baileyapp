abstract class SignupEvent {
  const SignupEvent();
}

class ObscurePressed extends SignupEvent {
  final bool obscure;
  ObscurePressed(this.obscure);
}
