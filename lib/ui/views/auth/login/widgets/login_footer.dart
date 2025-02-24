import 'package:flutter/material.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginFooter extends StatelessWidget {
  LoginFooter({super.key});

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Belum punya akun?",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: () {
            _navigationService.navigateToLoginView();
          },
          child: Text(
            "Register",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: CustomColors.primeGreen30,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    );
  }
}
