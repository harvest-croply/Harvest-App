import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/secondary_action_button.dart';
import 'package:stacked/stacked.dart';

import 'user_settings_viewmodel.dart';

class UserSettingsView extends StackedView<UserSettingsViewModel> {
  const UserSettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UserSettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
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
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  AssetsImages.avatar,
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Fufufafa",
                          style: TextThemeConstants.display6,
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: CustomColors.primeGreen10,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Admin",
                            style: TextThemeConstants.body4.copyWith(
                              color: CustomColors.primeGreen30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Fufufafa@gmail.com",
                      style: TextThemeConstants.body3.copyWith(
                        color: CustomColors.neutral40,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 32),
            Text(
              "Pengaturan",
              style: TextThemeConstants.display6,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsIcons.user),
                const SizedBox(width: 8),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Atur Profil",
                        style: TextThemeConstants.body2.copyWith(
                          color: CustomColors.neutral40,
                        ),
                      ),
                      SvgPicture.asset(
                        AssetsIcons.chevronRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsIcons.lockClosed),
                const SizedBox(width: 8),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Atur Password",
                        style: TextThemeConstants.body2.copyWith(
                          color: CustomColors.neutral40,
                        ),
                      ),
                      SvgPicture.asset(
                        AssetsIcons.chevronRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SecondaryActionButton(
          text: "Keluar",
          onTap: () {},
        ),
      ),
    );
  }

  @override
  UserSettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UserSettingsViewModel();
}
