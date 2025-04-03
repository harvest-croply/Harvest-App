import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/custom_date_dropdown.dart';
import 'package:harvest_app/shared/widgets/custom_stepper.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';

class StepThree extends StatelessWidget {
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomStepper(
          count: 3,
          currentStep: 3,
        ),
        const SizedBox(height: 16),
        Image.asset(
          AssetsImages.gardeningIlusstration,
          width: MediaQuery.of(context).size.width - 32,
        ),
        const SizedBox(height: 8),
        Text(
          "Tentukan tanaman yang dipanen!",
          style: TextThemeConstants.display6,
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Tanaman",
              style: TextThemeConstants.body3,
            ),
            const SizedBox(height: 4),
            const CustomDropdown(
              text: 'Pilih nama tanaman',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 1,
                  height: 192,
                  color: CustomColors.slate200,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Tanaman",
                    style: TextThemeConstants.body3,
                  ),
                  const SizedBox(height: 4),
                  const CustomDropdown(
                    text: 'Pilih nama tanaman',
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "*Wajib diisi",
                    style: TextThemeConstants.body3
                        .copyWith(color: CustomColors.neutral30),
                  ),
                  const SizedBox(height: 16),
                  const CustomTextField(
                    text: 'Jumlah Tanaman',
                    placeHolder: 'Masukkan jumlah tanaman',
                    note: "*Wajib diisi",
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsIcons.plusCircle,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            Text(
              "Tambah Varietas",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: CustomColors.primeGreen30,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
