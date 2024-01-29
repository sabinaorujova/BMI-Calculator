import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class Rounded extends StatelessWidget {
  const Rounded({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: child,
    );
  }
}
