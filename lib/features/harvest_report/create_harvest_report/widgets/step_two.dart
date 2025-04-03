import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/custom_date_dropdown.dart';
import 'package:harvest_app/shared/widgets/custom_stepper.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomStepper(
          count: 3,
          currentStep: 2,
        ),
        const SizedBox(height: 16),
        Image.asset(
          AssetsImages.gardeningIlusstration,
          width: MediaQuery.of(context).size.width - 32,
        ),
        const SizedBox(height: 8),
        Text(
          "Pilih Field Area yang sudah panen!",
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
            const CustomDropdown(
              text: 'Pilih field area',
            ),
          ],
        )
      ],
    );
  }
}
