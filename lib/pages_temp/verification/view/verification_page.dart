import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../verification.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerificationBloc>(
        create: (context) => VerificationBloc(VerificationState())
          ..add(const VerificationStartTimer()),
        child: const Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              50,
            ),
            child: VerificationAppBar(),
          ),
          body: SingleChildScrollView(child: VerificationForm()),
        ));
  }
}
