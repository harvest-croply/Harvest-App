import 'package:flutter/material.dart';
import 'package:harvest_app/ui/views/auth/register_email/widgets/register_header.dart';
import 'package:harvest_app/ui/widgets/action_button.dart';
import 'package:harvest_app/ui/widgets/auth_app_bar.dart';
import 'package:harvest_app/ui/widgets/auth_footer.dart';
import 'package:harvest_app/ui/widgets/custom_text_field.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            children: [
              const AuthAppBar(),
              const RegisterEmailHeader(),
              const SizedBox(height: 32),
              ActionButton(
                text: "Daftar",
                onTap: () {},
              ),
              const CustomTextField(
                text: 'Nama Lengkap',
                placeHolder: 'Masukan Nama Lengkap',
              ),
              const CustomTextField(
                text: 'Email',
                placeHolder: 'Masukan Email',
              ),
              const CustomTextField(
                text: 'Password',
                placeHolder: 'Masukan Password',
              ),
              AuthFooter(),
            ],
          ),
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
