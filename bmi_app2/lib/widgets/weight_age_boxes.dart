import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/constants/text.dart';
import 'package:bmi_app2/widgets/weight_age_box.dart';
import 'package:flutter/material.dart';

class WeightAgeBoxes extends StatefulWidget {
  const WeightAgeBoxes(
      {super.key,
      required this.onPlus,
      required this.onMinus,
      required this.weight});

  final void Function() onPlus;
  final void Function() onMinus;
  final String weight;

  @override
  State<WeightAgeBoxes> createState() => _WeightBoxState();
}

class _WeightBoxState extends State<WeightAgeBoxes> {
  int age = 23;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeightAgeBox(
            weightAgeText: AppTexts.weight,
            weihgtAgeNum: widget.weight,
            onMinus: widget.onMinus,
            onPlus: widget.onPlus,
            images: 'assets/svg/weight.png',
          ),
        BoxSized.boxSized_8,
        WeightAgeBox(
          weightAgeText: AppTexts.age,
          weihgtAgeNum: '$age',
          onMinus: () {
            if (age > 0) {
              age--;
              setState(() {});
            }
          },
          onPlus: () {
            if (age < 100) {
              age++;
            }
            setState(() {});
          },
          images: 'assets/svg/age.png',
        ),
      ],
    );
  }
}
