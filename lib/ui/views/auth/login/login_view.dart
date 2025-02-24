import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/auth/login/login_viewmodel.dart';
import 'package:harvest_app/ui/views/auth/login/widgets/forget_password.dart';
import 'package:harvest_app/ui/views/auth/login/widgets/login_footer.dart';
import 'package:harvest_app/ui/views/auth/login/widgets/login_header.dart';
import 'package:harvest_app/ui/views/auth/register/widgets/google_register_button.dart';
import 'package:harvest_app/ui/views/auth/register/widgets/or_divider.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:harvest_app/ui/widgets/auth_footer.dart';
import 'package:harvest_app/ui/widgets/custom_app_bar.dart';
import 'package:harvest_app/ui/widgets/custom_text_field.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              children: [
                const CustomAppBar(),
                const LoginHeader(),
                const SizedBox(height: 16),
                const GoogleRegisterButton(),
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
                  onTap: () {},
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
