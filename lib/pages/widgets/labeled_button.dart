import 'package:flutter/material.dart';

class LabeledButton extends StatelessWidget {
  const LabeledButton({
    super.key,
    required this.buttonLabel,
    required this.backgroundColor,
    required this.radiusbutton,
    required this.borderSide,
    required this.textColor,
    required this.boxWidth,
    required this.boxHeight,
    this.onPress,
  });
  final String buttonLabel;
  final Color backgroundColor;
  final double radiusbutton;
  final Color borderSide;
  final Color textColor;
  final double boxWidth;
  final double boxHeight;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxWidth,
      height: boxHeight,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radiusbutton,
            ),
          ),
          side: BorderSide(
            color: borderSide,
          ),
        ),
        onPressed: () {
          onPress?.call();
        },
        child: Text(
          buttonLabel,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
