import 'package:flutter/material.dart';

class VerificationAppBar extends StatelessWidget {
  const VerificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.chevron_left_outlined,
        color: Colors.black,
      ),
    );
  }
}
