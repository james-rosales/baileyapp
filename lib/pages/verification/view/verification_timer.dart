import 'dart:async';

import 'package:bailey_app/pages/verification/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationTimer extends StatelessWidget {
  const VerificationTimer({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<VerificationBloc>();
    return BlocBuilder<VerificationBloc, VerificationState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your code will expire in ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            state.countdowtimer.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Text(
            's',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      );
    });
  }
}
