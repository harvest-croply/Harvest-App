import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/features/auth/views/register_email/widgets/register_form.dart';
import 'package:harvest_app/features/auth/views/register_email/widgets/register_header.dart';
import 'package:harvest_app/shared/widgets/auth_footer.dart';
import 'package:harvest_app/shared/widgets/form_card.dart';
import 'package:stacked/stacked.dart';

import 'register_email_viewmodel.dart';

class RegisterEmailView extends StackedView<RegisterEmailViewModel> {
  const RegisterEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterEmailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: CustomColors.primeGreen10,
      body: SafeArea(
        child: Stack(
          children: [
            RegisterEmailHeader(),
            Image.asset(
              "packages/harvest_app/assets/images/register-bg.png",
            ),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 5,
                  child: FormCard(
                    child: Column(
                      children: [
                        const RegisterForm(),
                        AuthFooter(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  RegisterEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterEmailViewModel();
}
