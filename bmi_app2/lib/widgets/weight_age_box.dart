import 'package:bmi_app2/constants/box_sized.dart';

import 'package:bmi_app2/widgets/number_text.dart';
import 'package:bmi_app2/widgets/rounded_contanier.dart';
import 'package:bmi_app2/widgets/rounded_button.dart';
import 'package:bmi_app2/widgets/rounded_icon.dart';

import 'package:bmi_app2/widgets/title_text.dart';
import 'package:flutter/material.dart';

class WeightAgeBox extends StatefulWidget {
  const WeightAgeBox({
    super.key,
    required this.weightAgeText,
    required this.weihgtAgeNum,
    required this.onPlus,
    required this.onMinus,
    required this.images,
  });

  final String weightAgeText;
  final String weihgtAgeNum;
  final void Function() onPlus;
  final void Function() onMinus;
  final String images;

  @override
  State<WeightAgeBox> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAgeBox> {
  @override
  Widget build(BuildContext context) {
    return Rounded(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(children: [
          RoundedIcon(image: widget.images),
          const SizedBox(
            width: 5,
          ),
          TitleText(
            title: widget.weightAgeText,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ]),
        BoxSized.boxSized_16,
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(icon: Icons.remove_rounded, onTap: widget.onMinus),
              BoxSized.boxSized8,
              NumericText(
                numberText: widget.weihgtAgeNum,
              ),
              BoxSized.boxSized8,
              RoundedButton(icon: Icons.add_rounded, onTap: widget.onPlus),
            ])
      ]),
    );
  }
}
