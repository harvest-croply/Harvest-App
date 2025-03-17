import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'edit_delete_field_area_sheet_model.dart';

class EditDeleteFieldAreaSheet
    extends StackedView<EditDeleteFieldAreaSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  EditDeleteFieldAreaSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    EditDeleteFieldAreaSheetModel viewModel,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    AssetsImages.field,
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    request.title!,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: CustomColors.grey900,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  _navigationService.back();
                },
                child: SvgPicture.asset(AssetsIcons.close),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 24),
          Row(
            children: [
              SvgPicture.asset(
                AssetsIcons.edit,
                width: 21,
                height: 21,
              ),
              const SizedBox(width: 8),
              Text(
                'Edit',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CustomColors.primeGreen30,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 36),
          Row(
            children: [
              SvgPicture.asset(
                AssetsIcons.delete,
                width: 21,
                height: 21,
              ),
              const SizedBox(width: 8),
              Text(
                'Delete',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CustomColors.rose30,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  @override
  EditDeleteFieldAreaSheetModel viewModelBuilder(BuildContext context) =>
      EditDeleteFieldAreaSheetModel();
}
