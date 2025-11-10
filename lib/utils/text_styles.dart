import 'package:flutter/material.dart';
import 'package:intern_task_1/utils/colors.dart';
import 'fonts.dart';


class AppTextStyles {
  static const TextStyle headline1 = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle headline3 = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyText = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );
}