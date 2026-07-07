import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
    const CustomTextFormField({super.key, required this.hintText, required this.filledColor, required this.prefixIcon});
final String hintText;
final Color filledColor;
final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
prefixIcon: Icon(prefixIcon),
        filled: true,
        fillColor: Color(0xFFF3F3F3),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
