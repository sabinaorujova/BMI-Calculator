import 'package:bmi_app2/constants/color.dart';

import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.onTap, required this.text,this.isCalculate=true,
  });

  final void Function()? onTap;
  final String text;
  final bool isCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.colculateColor,
                    AppColors.primary,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            )));
  }
}
