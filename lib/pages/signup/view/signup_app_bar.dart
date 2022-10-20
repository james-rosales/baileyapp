import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupAppBar extends StatelessWidget {
  const SignupAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          context.push('/login');
        },
        icon: Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
      ),
    );
  }
}
