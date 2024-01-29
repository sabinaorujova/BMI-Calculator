import 'package:bmi_app2/constants/box_sized.dart';
import 'package:bmi_app2/providers/bmi_provider.dart';
import 'package:bmi_app2/widgets/gender.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenderBox extends StatefulWidget {
  const GenderBox({Key? key}) : super(key: key);

  @override
  State<GenderBox> createState() => _GenderRoundedState();
}

enum Gender { male, female }

class _GenderRoundedState extends State<GenderBox> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BmiProvider>(
        builder: (context, bmiProvider, __) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GenderContainer(
                      image: 'assets/images/man.png',
                      gender: Gender.male,
                      selectedGender: bmiProvider.selectedGender,
                      onTap: () {
                        bmiProvider.updateSelectedGender(Gender.male);
                      }),
                  BoxSized.boxSized8,
                  GenderContainer(
                    image: 'assets/images/woman.png',
                    gender: Gender.female,
                    selectedGender: bmiProvider.selectedGender,
                    onTap: () {
                      bmiProvider.updateSelectedGender(Gender.female);
                    },
                  ),
                ],
              ),
            ));
  }
}
