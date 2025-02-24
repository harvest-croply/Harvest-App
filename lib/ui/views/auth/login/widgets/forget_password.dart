import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Lupa Password?",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: CustomColors.neutral40,
                ),
          ),
          const SizedBox(width: 4),
          Text(
            "Atur ulang Password",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: CustomColors.primeGreen30,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
