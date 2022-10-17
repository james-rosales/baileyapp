import 'package:bailey_app/pages/verification/verification.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          50,
        ),
        child: VerificationAppBar(),
      ),
      body: VerificationForm(),
    );
  }
}
