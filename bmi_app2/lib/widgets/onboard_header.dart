import 'package:bmi_app2/widgets/page_dots.dart';
import 'package:bmi_app2/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnboardHeader extends StatelessWidget implements PreferredSizeWidget {
  const OnboardHeader({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: PageIndicators(controller: controller),
        actions: const [SkipButton()],
      ),
    );
  }

  @override
  Size get preferredSize =>const  Size.fromHeight(kToolbarHeight);
}
