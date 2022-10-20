import 'package:bailey_app/pages/widgets/labeled_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenForm extends StatelessWidget {
  const ScreenForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 80),
          child: Text(
            'Welcome to Bailey',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            height: 350,
            child: Image.network(
              'https://img.freepik.com/free-vector/flat-design-ui-ux-landing-page_52683-72187.jpg?w=2000',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: LabeledButton(
            buttonLabel: 'Sign Up',
            backgroundColor: const Color.fromARGB(255, 191, 111, 241),
            radiusbutton: 10,
            borderSide: const Color.fromARGB(255, 191, 111, 241),
            textColor: Colors.white,
            boxWidth: double.infinity,
            boxHeight: 60,
            onPress: () => context.push('/signup'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: LabeledButton(
            buttonLabel: 'Log In',
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            radiusbutton: 10,
            borderSide: Color.fromARGB(255, 191, 111, 241),
            textColor: Color.fromARGB(255, 191, 111, 241),
            boxWidth: double.infinity,
            boxHeight: 60,
            onPress: () => context.push('/login'),
          ),
        ),
      ],
    );
  }
}
