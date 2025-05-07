import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfirmLocationBottomWidget extends StatelessWidget {
  ConfirmLocationBottomWidget({super.key});

  final navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigationService.back();
                    },
                    child: SvgPicture.asset(
                      AssetsIcons.arrowLeft,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "Atur Lokasi",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: CustomColors.grey900,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  navigationService.navigateToSearchFarmView();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: CustomColors.primeGreen30,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AssetsIcons.search,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Cari",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: CustomColors.primeGreen30,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AssetsIcons.mapPin,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cibulan",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: CustomColors.grey900,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 70,
                      child: Text(
                        "Cibulan, Kec. Cidahu, Kabupaten Kuningan, Jawa Barat, Indonesia",
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: CustomColors.grey700,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ActionButton(
              text: "Konfirmasi",
              onTap: () {
                navigationService.navigateToCreateFarmView();
              }),
        ],
      ),
    );
  }
}
