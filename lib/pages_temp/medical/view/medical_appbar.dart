import 'package:flutter/material.dart';

class MedicalAppbar extends StatelessWidget {
  const MedicalAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Medical Chart',
        style: TextStyle(color: Colors.black),
      ),
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          )),
    );
  }
}
