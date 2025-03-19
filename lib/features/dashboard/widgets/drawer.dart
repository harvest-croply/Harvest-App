import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        customDrawerHeader(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 1,
            decoration: BoxDecoration(color: CustomColors.slate200),
          ),
        ),
        farmList(context),
        farmList(context),
        farmList(context),
        farmList(context),
        addMoreFarm(context),
      ],
    );
  }

  Widget customDrawerHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Kebun Kamu",
            style: GoogleFonts.openSans(
              color: CustomColors.neutral50,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () {
              Scaffold.of(context).closeDrawer();
            },
            child: SvgPicture.asset(AssetsIcons.close),
          ),
        ],
      ),
    );
  }

  Widget farmList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Image.asset(
            AssetsImages.farmAvatar,
            width: 64,
            height: 64,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cibulan Hills Farm",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: CustomColors.neutral50,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  "Cibulan, Kec. Cidahu, Kabupaten Kuningan, Jawa Barat, Indonesia",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: CustomColors.grey700,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            AssetsIcons.more,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget addMoreFarm(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 1,
            decoration: BoxDecoration(color: CustomColors.slate200),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsIcons.plusCircle,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Tambah Kebun",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: CustomColors.primeGreen30,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
