import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/features/auth/login/login_viewmodel.dart';
import 'package:harvest_app/features/auth/login/widgets/login_form.dart';
import 'package:harvest_app/features/auth/login/widgets/login_header.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: CustomColors.primeGreen10,
      body: SafeArea(
        child: Stack(
          children: [
            const LoginHeader(),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                const Expanded(
                  flex: 5,
                  child: LoginForm(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
