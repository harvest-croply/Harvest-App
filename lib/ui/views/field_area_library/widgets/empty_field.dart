import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';

class EmptyFieldAreaLibraryWidget extends StatelessWidget {
  const EmptyFieldAreaLibraryWidget({super.key});

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
          "Kamu belum punya Field Area!",
          style: TextStyle(
            color: CustomColors.neutral50,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
