import '../medical.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MedicalPage extends StatelessWidget {
  const MedicalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MedicalBloc>(
      create: (context) => MedicalBloc(MedicalState()),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: MedicalAppbar(),
        ),
        body: MedicalPages(),
      ),
    );
  }
}
