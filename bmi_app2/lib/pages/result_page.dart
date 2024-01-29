import 'package:bmi_app2/constants/app_constant.dart';
import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/helpers/navigate.dart';
import 'package:bmi_app2/pages/home_page.dart';
import 'package:bmi_app2/providers/bmi_provider.dart';
import 'package:bmi_app2/widgets/global_button.dart';
import 'package:bmi_app2/widgets/rounded_contanier.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result});

  final double result;
  @override
  Widget build(BuildContext context) {
    int index;

    if (result >= 18.5 && result < 24) {
      index = 1;
    } else if (result < 18.5) {
      index = 0;
    } else {
      index = 2;
    }

    return Scaffold(
      appBar: AppBar(
          title: const TitleText(
        title: 'Result',
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      )),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxSized.boxSized_16,
              const TitleText(
                title: AppTexts.yourResult,
                color: AppColors.primary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              BoxSized.boxSized_16,
              Expanded(
                child: Center(
                  child: Rounded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                        TitleText(
                          title: AppConstants.resultTexts[index]!,
                          color: AppConstants.resultTextColors[index]!,
                          fontWeight: FontWeight.bold,
                        ),
                        TitleText(
                          title: result.toStringAsFixed(1),
                          fontSize: 56,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        TitleText(
                          title: AppConstants.resultDescription[index]!,
                          fontSize: 24,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        )
                      ])),
                ),
              )
            ],
          )),
      bottomNavigationBar:GlobalButton(
        text: AppTexts.reCalculate,
        onTap: () => Navigate.replace(context,  ChangeNotifierProvider(create:(context)=>BmiProvider(),
     child: const HomePage()
      )),
      ),
    );
  }
}
