import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.5, color: CustomColors.grey800)),
      height: 44,
      width: double.maxFinite,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsImages.googleIcon,
              width: 24,
            ),
            const SizedBox(width: 8),
            Text(
              "Login dengan Google",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
