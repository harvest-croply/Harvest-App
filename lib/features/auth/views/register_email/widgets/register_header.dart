import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/app.locator.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterEmailHeader extends StatelessWidget {
  RegisterEmailHeader({super.key});

  final _navigationService = locator<NavigationService>();

  void _onBack() {
    _navigationService.back();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: _onBack,
            child: SvgPicture.asset(
              AssetsIcons.arrowLeft,
              height: 24,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
