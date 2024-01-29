import 'package:bmi_app2/constants/color.dart';

import 'package:bmi_app2/controllers/onoard_controller.dart';
import 'package:bmi_app2/pages/login_page.dart';
import 'package:bmi_app2/pages/onboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isSeenOnboard = await OnboardController.getIsSeenOnboard();
  runApp( MyApp(
    isSeenOnboard: isSeenOnboard,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.isSeenOnboard,
  });
  final bool? isSeenOnboard;

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark))),
      home: isSeenOnboard==null||isSeenOnboard==true
          ? const OnboardPage()
          : const LoginPage()
    );
  }
}
