import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/custom_date_picker.dart';
import 'package:harvest_app/shared/widgets/custom_stepper.dart';

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomStepper(
          count: 3,
          currentStep: 1,
        ),
        const SizedBox(height: 16),
        Image.asset(
          AssetsImages.datePickerRafiki,
          width: MediaQuery.of(context).size.width - 32,
        ),
        const SizedBox(height: 8),
        Text(
          "Kapan panen di Kebunmu?",
          style: TextThemeConstants.display6,
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tanggal panen",
              style: TextThemeConstants.body3,
            ),
            const SizedBox(height: 4),
            const CustomDatePicker(),
          ],
        )
      ],
    );
  }
}
