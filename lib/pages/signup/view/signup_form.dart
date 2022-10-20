import 'package:bailey_app/pages/signup/signup.dart';
import 'package:bailey_app/pages/splash_screen/view/screen_form.dart';
import 'package:bailey_app/pages/widgets/labeled_button.dart';
import 'package:bailey_app/pages/widgets/labeled_textfield.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});
  IconData _suffixIcon(isObscure) {
    if (isObscure) {
      return Icons.visibility_off;
    } else {
      return Icons.visibility;
    }
  }

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SignupBloc>();
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Sign Up Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: LabeledTextfield(
                prefixIcon: Icon(Icons.email_outlined),
                obscureText: false,
                textLabel: 'Email',
                borderRadius: 15,
                hintText: 'Email',
                validator: ''),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LabeledTextfield(
                suffixIcon: _suffixIcon(state.obscureState),
                onPress: () {
                  bloc.add(ObscurePressed(state.obscureState));
                },
                prefixIcon: Icon(Icons.lock_outline),
                obscureText: state.obscureState,
                textLabel: 'Password',
                borderRadius: 15,
                hintText: 'Password',
                validator: ''),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: LabeledTextfield(
                suffixIcon: Icons.visibility_off,
                prefixIcon: Icon(Icons.lock_outline),
                obscureText: true,
                textLabel: 'Confirm Password',
                borderRadius: 15,
                hintText: 'Confirm Password',
                validator: ''),
          ),
          CheckboxListTile(
            title: Row(
              children: const [
                Text(
                  "I agree with",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Bailey Terms & Data Privacy Policy.',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 191, 111, 241),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            value: false,
            onChanged: (bool? value) {},
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 50, right: 15),
            child: LabeledButton(
                buttonLabel: 'Next',
                backgroundColor: Colors.white,
                radiusbutton: 15,
                borderSide: Color.fromARGB(255, 191, 111, 241),
                textColor: Color.fromARGB(255, 191, 111, 241),
                boxWidth: double.infinity,
                boxHeight: 60),
          )
        ],
      );
    });
  }
}
