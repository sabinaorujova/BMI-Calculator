import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/helpers/navigate.dart';
import 'package:bmi_app2/pages/home_page.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: ()=>
          Navigate.replace(context,const HomePage())
      ,
        child: const Row(
          children: [
            TitleText(
              title: AppTexts.skip,
              color: AppColors.primary,
              fontSize: 16,
            ),
            Icon(
              Icons.arrow_back_ios_rounded,
              size: 16,
              color: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}
