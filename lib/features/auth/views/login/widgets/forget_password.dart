import 'package:flutter/material.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationService = locator<NavigationService>();

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
          GestureDetector(
            onTap: () {
              // navigationService.navigateToForgetPasswordView();
              navigationService.navigateToResetPasswordView();
            },
            child: Text(
              "Atur ulang Password",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: CustomColors.primeGreen30,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
