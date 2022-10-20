import 'package:bailey_app/pages/splash_screen/view/screen_form.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: ScreenForm(),
      ),
    );
  }
}
