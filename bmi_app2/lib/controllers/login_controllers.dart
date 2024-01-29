import 'dart:convert';

import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/helpers/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  LoginController._();
  static late final TextEditingController usernameController =
      TextEditingController();
  static late final TextEditingController passwordController =
      TextEditingController();

  static final formKey = GlobalKey<FormState>();
  static String get username => usernameController.text;
  static String get password => passwordController.text;
  static Future<bool?> _login() async {
    try {
      final Uri url = Uri.parse('https://reqres.in/api/login');
      final Response response = await post(url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"email": username, "password": password}));
      if (response.statusCode == 200) {
        response.body;
        final data = jsonDecode(response.body);
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('token', data['token']);
        return true;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static bool isLoading = false;
  static Future<bool>? tapLogin(context) async {
    isLoading = true;
    if (formKey.currentState!.validate()) {
      bool? success = await _login();
      if (success == true) {
        isLoading = false;
        Snackbars.show(context, 'Succesfuly logged in', AppColors.green);
      } else {
        isLoading = false;
        Snackbars.show(context, 'Error', AppColors.red);
      }
      return isLoading;
    } else {
      Snackbars.show(context, 'Fill all blanks', AppColors.red);
      return isLoading;
    }
  }

}
