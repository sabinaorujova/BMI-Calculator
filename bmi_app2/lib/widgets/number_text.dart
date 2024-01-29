import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class NumericText extends StatelessWidget {
  const NumericText({super.key, required this.numberText});

  final String numberText;
  @override
  Widget build(BuildContext context) {
    return Text(
      numberText,
      style: const TextStyle(
        fontSize: 34,
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
