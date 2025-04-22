import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'filter_field_area_sheet_model.dart';

class FilterFieldAreaSheet extends StackedView<FilterFieldAreaSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const FilterFieldAreaSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FilterFieldAreaSheetModel viewModel,
    Widget? child,
  ) {
    final navigationService = locator<NavigationService>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
              Text(
                request.title ?? "",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: CustomColors.grey900,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              GestureDetector(
                onTap: () {
                  navigationService.back();
                },
                child: SvgPicture.asset(
                  AssetsIcons.close,
                  width: 24,
                  height: 24,
                ),
              )
            ],
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return fieldAreaCard(context);
            },
          )
        ],
      ),
    );
  }

  Widget fieldAreaCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            AssetsImages.field,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 8),
          Text(
            "Semua Field Area",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.grey900,
                ),
          ),
        ],
      ),
    );
  }

  @override
  FilterFieldAreaSheetModel viewModelBuilder(BuildContext context) =>
      FilterFieldAreaSheetModel();
}
