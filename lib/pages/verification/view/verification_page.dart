import 'package:bailey_app/pages/dashboard/dashboard.dart';
import 'package:bailey_app/pages/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerificationBloc>(
        create: (context) => VerificationBloc(VerificationState())
          ..add(VerificationStartTimer()),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              50,
            ),
            child: VerificationAppBar(),
          ),
          body: VerificationForm(),
        ));
  }
}
