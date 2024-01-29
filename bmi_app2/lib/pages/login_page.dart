import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/controllers/login_controllers.dart';
import 'package:bmi_app2/widgets/backround_contanier.dart';
import 'package:bmi_app2/widgets/button.dart';
import 'package:bmi_app2/widgets/my_text_field.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: LoginController.formKey,
        child: Stack(children: [
          const BackroundContanier(),
          Center(
            child: Column(
              children: [
                BoxSized.boxSized_50,
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                BoxSized.boxSized_24,
                const TitleText(
                  title: AppTexts.login,
                  color: AppColors.black,
                  fontSize: 30,
                ),
                BoxSized.boxSized_24,
                MyTextField(
                  controller: LoginController.usernameController,
                  hintText: AppTexts.userName,
                  obscureText: false,
                  prefixIcon: Icons.person_rounded,
                ),
                BoxSized.boxSized_8,
                MyTextField(
                  obscureText: true,
                  controller: LoginController.passwordController,
                  hintText: AppTexts.password,
                  prefixIcon: Icons.key,
                ),
                BoxSized.boxSized_8,
                const TitleText(
                  title: AppTexts.text,
                  color: Color.fromARGB(255, 190, 187, 187),
                  fontSize: 20,
                ),
                BoxSized.boxSized_24,
                Button(
                    isLoading: LoginController.isLoading,
                  onTap: ()async {
                    setState(() {});
                   await LoginController.tapLogin(context);
                  setState(() { });
                  },
                
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
