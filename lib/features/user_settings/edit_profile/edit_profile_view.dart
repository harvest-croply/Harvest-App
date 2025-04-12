import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:harvest_app/shared/widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';
import 'edit_profile_viewmodel.dart';

class EditProfileView extends StackedView<EditProfileViewModel> {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditProfileViewModel viewModel,
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
        padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
        child: Center(
          child: Column(
            children: [
              buildEditProfileHeader(),
              const SizedBox(height: 32),
              const CustomTextField(
                  text: 'Nama Lengkap', placeHolder: 'Nama Lengkap'),
              const CustomTextField(text: 'Email', placeHolder: 'Email'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ActionButton(
          text: "Simpan",
          onTap: () {},
        ),
      ),
    );
  }

  Widget buildEditProfileHeader() {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset(
              AssetsImages.avatar,
              width: 60,
              height: 60,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                AssetsImages.photo,
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        const SizedBox(width: 8),
        Text(
          "Pasang foto profilmu!",
          style: TextThemeConstants.display6,
        ),
      ],
    );
  }

  @override
  EditProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditProfileViewModel();
}
