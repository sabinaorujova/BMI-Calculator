import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class BackroundContanier extends StatelessWidget {
  const BackroundContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.backroundColor1,
                AppColors.backroundColor2
              ]),
        ));
  }
}
