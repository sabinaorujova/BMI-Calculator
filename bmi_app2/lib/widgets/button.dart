import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap,
 this.isLoading =false, });

  final void Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: AppColors.button, borderRadius: BorderRadius.circular(10)),
          child:  Center(
              child: isLoading
              ? const CircularProgressIndicator.adaptive()
              :const  TitleText(
            title: 'Sign In',
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 214, 235, 241),
          )
          )
          ),
    );
  }
}
