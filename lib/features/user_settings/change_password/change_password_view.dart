import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import 'change_password_viewmodel.dart';

class ChangePasswordView extends StackedView<ChangePasswordViewModel> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChangePasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: buildAppBar(viewModel),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
        child: const Column(
          children: [
            CustomTextField(
              text: "Password Baru",
              placeHolder: "Password Baru",
              isPassword: true,
            ),
            CustomTextField(
              text: "Konfirmasi Password Baru",
              placeHolder: "Konfirmasi Password Baru",
              isPassword: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
          text: "Ubah Password",
          onTap: () {},
        ),
      ),
    );
  }

  buildAppBar(ChangePasswordViewModel viewModel) {
    return AppBar(
      elevation: 1,
      leadingWidth: 48,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        child: GestureDetector(
          onTap: () {
            viewModel.back();
          },
          child: SvgPicture.asset(
            AssetsIcons.arrowLeft,
          ),
        ),
      ),
      centerTitle: false,
      title: Text(
        "Ubah Password",
        style: TextThemeConstants.display6,
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  ChangePasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChangePasswordViewModel();
}
