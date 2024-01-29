import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.title,
      this.fontSize,
      this.color,
      this.fontWeight});

  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight,
        color: color ?? AppColors.primary,
      ),
    );
  }
}
