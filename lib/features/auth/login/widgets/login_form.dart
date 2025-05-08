import 'package:flutter/material.dart';
import 'package:harvest_app/features/auth/login/login_viewmodel.dart';
import 'package:harvest_app/features/auth/login/widgets/forget_password.dart';
import 'package:harvest_app/features/auth/login/widgets/login_footer.dart';
import 'package:harvest_app/features/auth/register/widgets/google_register_button.dart';
import 'package:harvest_app/features/auth/register/widgets/or_divider.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class LoginForm extends StackedHookView<LoginViewModel> {
  const LoginForm({super.key});

  @override
  Widget builder(BuildContext context, LoginViewModel model) {
    return Container(
      height: 506,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          const SizedBox(height: 16),
          GoogleRegisterButton(),
          const OrDivider(),
          const SizedBox(height: 16),
          CustomTextField(
            controller: model.emailController,
            text: 'Email',
            placeHolder: 'Masukan Email',
          ),
          CustomTextField(
            controller: model.passwordController,
            text: 'Password',
            placeHolder: 'Masukan Password',
          ),
          const ForgetPassword(),
          ActionButton(
            text: "Login",
            onTap: () {
              model.login(context);
            },
          ),
          LoginFooter(),
        ],
      ),
    );
  }
}
