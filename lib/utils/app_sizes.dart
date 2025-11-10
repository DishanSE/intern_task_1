import 'package:flutter/material.dart';

class AppSizes {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double paddingSmall = 8.0;
  static double paddingMedium = 16.0;
  static double paddingLarge = 24.0;

  static double responsiveFontSize(BuildContext context, double baseSize) {
    double width = screenWidth(context);
    if (width < 360) return baseSize * 0.9;
    if (width > 600) return baseSize * 1.2;
    return baseSize;
  }
}