import 'package:flutter/material.dart';
import 'package:harvest_app/features/auth/register/widgets/google_register_button.dart';
import 'package:harvest_app/features/auth/register/widgets/register_header.dart';
import 'package:harvest_app/features/auth/register/widgets/or_divider.dart';
import 'package:harvest_app/shared/widgets/auth_app_bar.dart';
import 'package:harvest_app/shared/widgets/auth_footer.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:stacked/stacked.dart';
import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthAppBar(),
              const RegisterHeader(),
              GoogleRegisterButton(),
              const OrDivider(),
              ActionButton(
                text: "Daftar Dengan Email",
                onTap: () {
                  viewModel.register();
                },
              ),
              AuthFooter()
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
