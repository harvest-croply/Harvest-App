import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/login/widgets/google_login_button.dart';
import 'package:harvest_app/ui/views/login/widgets/header.dart';
import 'package:harvest_app/ui/views/login/widgets/login_divider.dart';
import 'package:harvest_app/ui/views/login/widgets/login_footer.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:stacked/stacked.dart';
import 'login_viewmodel.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginHeader(),
              const GoogleLoginButton(),
              const LoginDivider(),
              ActionButton(
                text: "Daftar Dengan Email",
                onTap: () {},
              ),
              const LoginFooter()
            ],
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
