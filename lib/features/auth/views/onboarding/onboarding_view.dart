import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_divider.dart';
import 'package:harvest_app/shared/widgets/form_card.dart';
import 'package:harvest_app/shared/widgets/google_auth_button.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  void _onRegisterByEmail() {}

  void _onLogin() {}

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: CustomColors.primeGreen10,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'packages/harvest_app/assets/images/onboarding-bg.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            bottom: 0,
            child: FormCard(
              child: Column(
                children: [
                  const GoogleAuthButton(type: AuthType.register),
                  const CustomDivider(
                    text: "Atau",
                  ),
                  ActionButton(
                    text: 'Daftar Dengan Email',
                    onTap: _onRegisterByEmail,
                  ),
                  Text(
                    "Belum punya akun?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: _onLogin,
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: CustomColors.primeGreen30,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
