import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/widgets/gender_box.dart';
import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer(
      {super.key,
      required this.gender,
      required this.selectedGender,
      required this.onTap,
      required this.image});
  final Gender gender;
  final Gender selectedGender;
  final VoidCallback onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: gender == selectedGender
              ? AppColors.white
              : AppColors.genderContanier,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: gender == selectedGender
                ? AppColors.primary
                : AppColors.genderContanier,
            width: 5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            Text(
              gender == Gender.male ? AppTexts.male : AppTexts.female,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: gender == selectedGender ? Colors.orange : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
