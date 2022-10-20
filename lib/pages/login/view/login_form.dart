import 'package:bailey_app/pages/widgets/labeled_button.dart';
import 'package:bailey_app/pages/widgets/labeled_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 40, bottom: 50),
          child: Text(
            'Login to your\nAccount',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: LabeledTextfield(
            prefixIcon: Icon(Icons.email_outlined),
            textLabel: 'Email',
            borderRadius: 15,
            hintText: 'Email',
            obscureText: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: LabeledTextfield(
            prefixIcon: Icon(Icons.lock_outline),
            suffixIcon: Icons.visibility_off,
            textLabel: 'Password',
            borderRadius: 15,
            hintText: 'Password',
            obscureText: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(
                    255,
                    191,
                    111,
                    241,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: LabeledButton(
            buttonLabel: 'Login',
            backgroundColor: Colors.white,
            radiusbutton: 15,
            borderSide: Color.fromARGB(255, 191, 111, 241),
            textColor: Color.fromARGB(255, 191, 111, 241),
            boxWidth: double.infinity,
            boxHeight: 60,
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.push('/signup');
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 191, 111, 241),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
