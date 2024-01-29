import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/controllers/onoard_controller.dart';
import 'package:bmi_app2/data/models/onboard_item_model.dart';
import 'package:bmi_app2/widgets/global_button.dart';
import 'package:bmi_app2/widgets/onboard_companent.dart';
import 'package:bmi_app2/widgets/onboard_header.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController _pageController = PageController();
  int currentPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: currentPage);
    super.initState();
  }

  bool get isLastPage => currentPage == OnboardItemModel.items.length - 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: OnboardHeader(
          controller: _pageController,
        ),
        body: Column(children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              controller: _pageController,
              itemBuilder: (context, index) {
                final item = OnboardItemModel.items[index];
                return OnboardCompanent(
                    title: item.title,
                    discription: item.discription,
                    imageUrl: item.imageUrl);
              },
            ),
          ),
          GlobalButton(
            isCalculate: false,
            text: isLastPage ? AppTexts.singIp : AppTexts.continueText,
            onTap: () async {
              if (!isLastPage) {
                currentPage++;
                _pageController.animateToPage(
                  currentPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
                setState(() {});
              } else {
                OnboardController.
                navigateHomePage(context);
              }
            },
          )
        ]));
  }
}
