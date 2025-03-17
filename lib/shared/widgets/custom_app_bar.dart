import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(102);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.1),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _navigationService.back();
                },
                child: SvgPicture.asset(AssetsIcons.arrowLeft),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Image.asset(
            AssetsImages.avatar,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
