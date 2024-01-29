import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/widgets/measurement_rounded.dart';
import 'package:bmi_app2/widgets/number_text.dart';
import 'package:bmi_app2/widgets/rounded_contanier.dart';
import 'package:bmi_app2/widgets/rounded_icon.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({
    super.key,
    this.onSlide,
    required this.height,
  });

  final void Function(double)? onSlide;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Rounded(
        child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(children: [
              RoundedIcon(image: 'assets/svg/heightt.png'),
              BoxSized.boxSized5,
              TitleText(
                title: AppTexts.height,
                fontWeight: FontWeight.bold,
              ),
            ]),
            Column(
              textBaseline: TextBaseline.alphabetic,
              children: [
                NumericText(numberText: height.toStringAsFixed(0)),
                const TitleText(
                  title: 'cm',
                  color: AppColors.genderContanier,
                  fontSize: 20,
                ),
                BoxSized.boxSized_32,
                const MeasurementRounded(
                  text: 'cm',
                )
              ],
            ),
          ],
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Slider.adaptive(
              min: 100,
              max: 200,
              value: height,
              thumbColor: AppColors.primary,
              activeColor: AppColors.primary,
              inactiveColor: AppColors.genderContanier,
              onChanged: onSlide),
        )
      ],
    ));
  }
}
