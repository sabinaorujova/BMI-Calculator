import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicators extends StatelessWidget {
  const PageIndicators({super.key,
  required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left:16),
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: const ExpandingDotsEffect(
            spacing: 5.0,
            radius: 30.0,
            dotWidth: 8.0,
            dotHeight: 4.0,
            expansionFactor: 5,
            dotColor: AppColors.grey,
            activeDotColor: AppColors.primary),
      ),
    );
  }
}
