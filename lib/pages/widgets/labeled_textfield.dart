import 'package:flutter/material.dart';

class LabeledTextfield extends StatelessWidget {
  const LabeledTextfield({
    super.key,
    required this.textLabel,
    required this.borderRadius,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onPress,
  });
  final String textLabel;
  final double borderRadius;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final String? validator;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            textLabel,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextFormField(
            validator: (value) => validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 191, 111, 241), width: 2),
                  borderRadius: BorderRadius.circular(borderRadius)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: IconButton(
                onPressed: () => onPress?.call(),
                icon: Icon(suffixIcon),
              ),
            ))
      ],
    );
  }
}
