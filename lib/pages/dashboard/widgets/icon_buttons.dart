import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons(
      {super.key,
      required this.backgroundcolor,
      required this.label,
      required this.coloricon,
      required this.textColor,
      required this.prefix});

  final Color backgroundcolor;
  final String label;
  final Color coloricon;
  final Color textColor;
  final IconData? prefix;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(100, 120),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: backgroundcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                prefix,
                color: coloricon,
                size: 30,
              ),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
