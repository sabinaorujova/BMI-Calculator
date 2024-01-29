import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.icon, required this.onTap});

  final IconData? icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.genderContanier,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                )
              ]),
          child: Icon(
            icon,
            color: AppColors.textColor,
          )),
    );
  }
}
