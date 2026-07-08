
import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_colors.dart';

abstract class AppTextStyles {
  AppTextStyles._();
  static  TextStyle k20TextButton = TextStyle(
    color: AppColors.hintColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle k14TextButton =  TextStyle(
    color: AppColors.hintColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle k17TextButton =  TextStyle(
    color: AppColors.primaryColor,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle k24TextButton = TextStyle(fontSize: 24, color: AppColors.primaryColor);
  static  TextStyle k18Text =  TextStyle(
    color: AppColors.brownText,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
}