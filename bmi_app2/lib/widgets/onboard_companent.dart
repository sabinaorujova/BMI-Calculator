import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class OnboardCompanent extends StatelessWidget {
  const OnboardCompanent({super.key, required this.title, required this.discription, required this.imageUrl});
  final String title;
  final String discription;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          
           TitleText(
            title: title,
            fontSize: 24,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
          
          TitleText(
            title: discription,
            fontSize: 24,
            color: AppColors.grey,
          ),
          BoxSized.boxSized_16,
          Image.asset(imageUrl,
          )
        ],
      ),
    );
  }
}
