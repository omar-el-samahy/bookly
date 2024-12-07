import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.labelText,
      required this.prefixIcon,
      this.hintText});

  final String labelText;
  final String? hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
