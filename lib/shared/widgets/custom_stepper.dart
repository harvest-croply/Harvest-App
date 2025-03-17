import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class CustomStepper extends StatelessWidget {
  final int count;
  final int currentStep;
  const CustomStepper({
    super.key,
    required this.count,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 7,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: count,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return stepper(context, index);
          },
        ),
      ),
    );
  }

  Widget stepper(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 7,
        width:
            ((MediaQuery.of(context).size.width - ((count + 1) * 8)) / count),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index < currentStep
              ? CustomColors.primeGreen30
              : CustomColors.primeGreen10,
        ),
      ),
    );
  }
}
