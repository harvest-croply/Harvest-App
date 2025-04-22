import 'package:flutter/material.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/features/auth/views/login/widgets/forget_password.dart';
import 'package:harvest_app/features/auth/views/login/widgets/login_footer.dart';
import 'package:harvest_app/features/auth/views/register/widgets/google_register_button.dart';
import 'package:harvest_app/features/auth/views/register/widgets/or_divider.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
