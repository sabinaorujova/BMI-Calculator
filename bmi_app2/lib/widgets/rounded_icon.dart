import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    super.key,
    required this.image,
  });
final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colculateColor,
            AppColors.primary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        shape: BoxShape.circle,
      ),
       alignment: Alignment.center,
      child:  Image.asset( image,height: 20,
       width: 20,
     ),
    );
  }
}
