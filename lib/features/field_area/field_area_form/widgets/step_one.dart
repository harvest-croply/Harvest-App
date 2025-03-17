import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';

class FieldAreaFormStepOne extends StatelessWidget {
  const FieldAreaFormStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsImages.gardeningIlusstration,
          height: 170,
        ),
        const SizedBox(height: 8),
        Text(
          "Buat Field Area Untuk Kebunmu",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CustomColors.neutral50,
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            text: "Nama Field Area",
            placeHolder: "Ketikkan nama Field Area",
            note: "* Wajib diisi",
          ),
        ),
      ],
    );
  }
}
