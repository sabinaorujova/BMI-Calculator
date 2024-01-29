import 'package:bmi_app2/constants/color.dart';
import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
 const  MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.prefixIcon,
    });

  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;
  
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: (v) {
          if (v == '') {
            return 'Field cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color:AppColors.black),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          fillColor: AppColors.contanierColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.grey),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          ),
          
        ),
      ),
    );
  }
}
