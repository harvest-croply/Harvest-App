import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/app/constants/text_theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          "Login",
          style: TextThemeConstants.display4.copyWith(
            color: CustomColors.primeGreen40,
          ),
        ),
        Image.asset(
          "packages/harvest_app/assets/images/register-bg.png",
        ),
      ],
    );
  }
}
