import 'dart:math' as math;
import 'package:bmi_app2/helpers/navigate.dart';
import 'package:bmi_app2/pages/result_page.dart';
import 'package:flutter/material.dart';

import '../widgets/gender_box.dart';

class BmiProvider extends ChangeNotifier {
  double _height = 180;
  double get height => _height;
  int get roundedHeight => _height.round();

  int _weight = 60;
  int get weight => _weight;
  String get fixedWeight => _weight.toString();
  
  double result = 0;
  
  Gender _selectedGender = Gender.male;
 Gender get selectedGender => _selectedGender;

void updateSelectedGender(Gender gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  
  void onSlide(double v) {
    _height = v;
    notifyListeners();
  }

  void onMinus() {
    if (_weight > 10) {
      _weight--;
      notifyListeners();
    }
  }

  void onPlus() {
    if (_weight < 100) {
      _weight++;
      notifyListeners();
    }
  }
 void onCalculate(BuildContext context) {
    result = _weight / math.pow(_height / 100, 2);
    debugPrint('result: $result');
    Navigate.to(
      context,
      ResultPage(
        result: result,
      ),
    );
  }
}
