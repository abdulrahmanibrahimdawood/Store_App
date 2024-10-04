import 'package:flutter/material.dart';

class CustomTeaxtField extends StatelessWidget {
  CustomTeaxtField(
      {this.onChanged,
      this.inputType,
      this.hintText,
      this.obscureText = false});
  String? hintText;
  Function(String)? onChanged;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
