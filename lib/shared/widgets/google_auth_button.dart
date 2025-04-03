import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';

enum AuthType { login, register }

class GoogleAuthButton extends StatelessWidget {
  final AuthType type;

  const GoogleAuthButton({super.key, required this.type});

  String _getText() {
    if (type == AuthType.login) return 'Login dengan Google';

    return 'Daftar dengan Google';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1.5,
          color: CustomColors.grey800,
        ),
      ),
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
              _getText(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
