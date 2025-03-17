import 'package:flutter/material.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/features/auth/login/login_viewmodel.dart';
import 'package:harvest_app/features/auth/login/widgets/forget_password.dart';
import 'package:harvest_app/features/auth/login/widgets/login_footer.dart';
import 'package:harvest_app/features/auth/login/widgets/login_header.dart';
import 'package:harvest_app/features/auth/register/widgets/google_register_button.dart';
import 'package:harvest_app/features/auth/register/widgets/or_divider.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/auth_app_bar.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginView extends StackedView<LoginViewModel> {
  LoginView({Key? key}) : super(key: key);
  final _navigationService = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              children: [
                const AuthAppBar(),
                const LoginHeader(),
                const SizedBox(height: 16),
                GoogleRegisterButton(),
                const OrDivider(),
                const SizedBox(height: 16),
                const CustomTextField(
                  text: 'Email',
                  placeHolder: 'Masukan Email',
                ),
                const CustomTextField(
                  text: 'Password',
                  placeHolder: 'Masukan Password',
                ),
                const ForgetPassword(),
                ActionButton(
                  text: "Login",
                  onTap: () {
                    _navigationService.navigateToDashboardView();
                  },
                ),
                LoginFooter(),
              ],
            ),
          ),
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
