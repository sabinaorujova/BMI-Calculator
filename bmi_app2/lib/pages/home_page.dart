import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/controllers/onoard_controller.dart';
import 'package:bmi_app2/widgets/gender_box.dart';
import 'package:bmi_app2/widgets/global_button.dart';
import 'package:bmi_app2/widgets/height_box.dart';
import 'package:bmi_app2/widgets/weight_age_boxes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bmi_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Built Worked');
    BmiProvider bmiProvider = context.read<BmiProvider>();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            AppTexts.appName,
            style: TextStyle(fontSize: 30, color: AppColors.textColor),
          ),
          backgroundColor: AppColors.white,
          actions: [
            IconButton(
              onPressed: () => OnboardController.navigateOnboardPage(context),
              icon: const Icon(Icons.logout_rounded),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BoxSized.boxSized_32,
              const GenderBox(),
              BoxSized.boxSized_32,
              Row(
                children: [
                  Consumer<BmiProvider>(
                    builder: (context, bmiProvider, _) => WeightAgeBoxes(
                      weight: bmiProvider.fixedWeight,
                      onMinus: bmiProvider.onMinus,
                      onPlus: bmiProvider.onPlus,
                    ),
                  ),
                  Consumer<BmiProvider>(
                    builder: (context, bmiProvider, _) => HeightBox(
                      height: bmiProvider.height,
                      onSlide: bmiProvider.onSlide,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Consumer<BmiProvider>(
          builder: (context, bmiProvider, _) => GlobalButton(
            text: AppTexts.calculate,
            onTap: () => bmiProvider.onCalculate(context),
          ),
        ));
  }
}
