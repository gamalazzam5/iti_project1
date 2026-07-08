import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_colors.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key, required this.hintText, this.prefixIcon, this.suffixIcon,
  });
final String hintText;
final Icon? prefixIcon;
final Icon? suffixIcon;

@override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

        filled: true,
        fillColor: AppColors.fieldFillColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          fontSize: 16,
          color: AppColors.hintColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}