import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Widget? suffixIcon;
  final bool obsecure;
  final Color? fillColor;

  const CustomForm({
    super.key,
    required this.controller,
    required this.labelText,
    this.suffixIcon,
    this.fillColor,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
        fillColor: fillColor,
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
