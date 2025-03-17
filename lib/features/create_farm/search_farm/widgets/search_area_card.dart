import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/app/app.router.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchAreaCard extends StatelessWidget {
  SearchAreaCard({super.key});
  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigationService.navigateToConfirmLocationView();
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AssetsIcons.mapPin,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cibulan",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: CustomColors.grey900,
                      ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 64,
                  child: Text(
                    "Cibulan, Kec. Cidahu, Kabupaten Kuningan, Jawa Barat, Indonesia",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: CustomColors.grey700,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
