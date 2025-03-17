import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';

class CreateFarmTreeImage extends StatelessWidget {
  const CreateFarmTreeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsImages.tree,
          width: MediaQuery.of(context).size.width,
          height: 170,
        ),
        const SizedBox(height: 8),
        Text(
          "Buat Kebun Pertamamu!",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CustomColors.neutral50,
          ),
        )
      ],
    );
  }
}
