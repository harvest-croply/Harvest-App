import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          Expanded(
            child: SvgPicture.asset(
              'packages/harvest_app/assets/svg/onboard_bg.svg',
              width: double.infinity,
              fit: BoxFit.fitHeight,
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
                    onTap: () {},
                    child: Text(
                      "Register",
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
