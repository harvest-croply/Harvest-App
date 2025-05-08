import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/features/auth/reset_password/reset_password_viewmodel.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          title: Text(
            "Atur Ulang Password",
            style: TextThemeConstants.display5,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              const CustomTextField(
                text: 'Password Baru',
                placeHolder: 'Masukan Password Baru',
                isPassword: true,
              ),
              const CustomTextField(
                text: 'Konfirmasi Password Baru',
                placeHolder: 'Ketik ulang Password baru kamu',
                isPassword: true,
              ),
              ActionButton(
                text: 'Atur Ulang Password',
                onTap: () {},
              ),
            ],
          ),
        ));
  }

  @override
  ResetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordViewModel();
}
