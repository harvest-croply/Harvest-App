import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/app/constants/text_theme.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'delete_farm_sheet_model.dart';

class DeleteFarmSheet extends StackedView<DeleteFarmSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  DeleteFarmSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    DeleteFarmSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hapus Kebun",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CustomColors.grey900,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              GestureDetector(
                onTap: () {
                  _navigationService.back();
                },
                child: SvgPicture.asset(
                  AssetsIcons.close,
                  width: 24,
                  height: 24,
                  color: CustomColors.neutral40,
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          Image.asset(
            AssetsImages.inboxCleanup,
            width: 170,
            height: 170,
          ),
          const SizedBox(height: 8),
          Text("Yakin ingin menghapus kebun ini?",
              style: TextThemeConstants.display6),
          const SizedBox(height: 8),
          Text(
            "Jika kebun dihapus, kamu bisa kehilangan semua data Field Area!",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: CustomColors.neutral40,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: CustomColors.rose30,
                  ),
                  child: Center(
                    child: Text(
                      "Hapus",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Batalkan",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: CustomColors.primeGreen30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  DeleteFarmSheetModel viewModelBuilder(BuildContext context) =>
      DeleteFarmSheetModel();
}
