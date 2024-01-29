import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';
class AppConstants {
  const AppConstants._();
  static const Map<int, String> resultTexts = {
    0: 'UnderWeight',
    1: 'Normal',
    2: 'OverWeight',
  };
  static const Map<int, Color> resultTextColors = {
    0: AppColors.yellow,
    1: AppColors.green,
    2: AppColors.red,
  };
   static const Map<int, String> resultDescription = {
    0: 'Your body is underweight',
    1:'Your body is normal',
    2:'Your body is overweight',
  };
}
