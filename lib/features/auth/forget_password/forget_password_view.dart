import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/features/auth/register/widgets/or_divider.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:harvest_app/shared/widgets/secondary_action_button.dart';
import 'package:stacked/stacked.dart';

import 'forget_password_viewmodel.dart';

class ForgetPasswordView extends StackedView<ForgetPasswordViewModel> {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            "Lupa Password",
            style: TextThemeConstants.display5,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              const CustomTextField(
                text: 'Email',
                placeHolder: 'Masukan Email',
              ),
              ActionButton(
                text: 'Kirim',
                onTap: () {},
              ),
              const OrDivider(),
              SecondaryActionButton(
                text: "Coba Login Kembali",
                onTap: () {},
              )
            ],
          ),
        ));
  }

  @override
  ForgetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgetPasswordViewModel();
}
