import 'package:bmi_app2/constants/preferences_keys.dart';
import 'package:bmi_app2/helpers/navigate.dart';
import 'package:bmi_app2/pages/home_page.dart';
import 'package:bmi_app2/pages/onboard_page.dart';
import 'package:bmi_app2/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardController {
  const OnboardController._();

  static Future<void> saveData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(PreferenceKeys.isSeenOnboard, true);
  }

  static Future<void> removeData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(PreferenceKeys.isSeenOnboard);
  }

  static Future<bool?> getIsSeenOnboard() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    bool? isSeenOnboard =
        sharedPreferences.getBool(PreferenceKeys.isSeenOnboard);
    return isSeenOnboard;
  }

  static void navigateOnboardPage(BuildContext context) async =>
      await removeData()
          .then((v) => Navigate.replace(context, const OnboardPage()));

  static void navigateHomePage(BuildContext context) async =>
      await saveData().then((v) => Navigate.replace(context, 
      ChangeNotifierProvider(create:(context)=>BmiProvider(),
     child: const HomePage()
      )
      ));
}