import 'package:bailey_app/pages/signup/signup.dart';
import 'package:bailey_app/pages_temp/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) => SignupBloc(SignupState()),
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(
                double.infinity,
                60,
              ),
              child: SignupAppBar(),
            ),
            body: SingleChildScrollView(
              child: SignupForm(),
            )));
  }
}
