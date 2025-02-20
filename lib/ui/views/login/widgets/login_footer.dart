import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sudah pernah daftar?",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 4),
        Text(
          "Login",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: CustomColors.primeGreen30,
                decoration: TextDecoration.underline,
              ),
        ),
      ],
    );
  }
}
