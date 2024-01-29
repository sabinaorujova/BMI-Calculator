import 'package:bmi_app2/constants/assets.dart';
import 'package:bmi_app2/constants/text.dart';

class OnboardItemModel {
  final String title;
  final String discription;
  final String imageUrl;
  OnboardItemModel(
      {required this.title, required this.discription, required this.imageUrl});
  static final List<OnboardItemModel> items = [
    OnboardItemModel(
      title: AppTexts.onboardText_1,
      discription: AppTexts.discription_1,
      imageUrl: Assets.onboardImage1,
    ),
    OnboardItemModel(
      title: AppTexts.onboardText_2,
      discription: AppTexts.discription_2,
      imageUrl: Assets.onboardImage2,
    ),
    OnboardItemModel(
      title: AppTexts.onboardText_3,
      discription: AppTexts.discription_3,
      imageUrl: Assets.onboardImage3,
    ),
  ];
}
