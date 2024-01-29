import 'package:bmi_app2/constants/color.dart';
import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class MeasurementRounded extends StatelessWidget {
  const MeasurementRounded({super.key, required this.text,});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.colculateColor),
        
        child:  Center( child: TitleText(
          title: text,
          color: AppColors.white,
          fontSize: 16,
        ) ,
       
     ) );
     
        
      
        
  }
}
