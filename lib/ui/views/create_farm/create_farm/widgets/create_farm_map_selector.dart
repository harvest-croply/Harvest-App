import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/ui/widgets/search_bar.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateFarmMapSelector extends StatefulWidget {
  const CreateFarmMapSelector({super.key});

  @override
  State<CreateFarmMapSelector> createState() => _CreateFarmMapSelectorState();
}

class _CreateFarmMapSelectorState extends State<CreateFarmMapSelector> {
  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: CustomColors.surface20,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 120,
          ),
          const SizedBox(height: 16),
          CustomSearchBar(
            onTap: () {
              _navigationService.navigateToSearchFarmView();
            },
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsIcons.map),
              const SizedBox(width: 8),
              Text(
                'Atur Lewat Peta',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: CustomColors.primeGreen30,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
