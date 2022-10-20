import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../verification.dart';

class VerificationTimer extends StatelessWidget {
  const VerificationTimer({super.key});

  @override
  Widget build(BuildContext context) {
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
            state.countdowntimer.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Text(
            's',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      );
    });
  }
}
