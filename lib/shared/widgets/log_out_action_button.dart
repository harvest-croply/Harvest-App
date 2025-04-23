import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class LogoutActionButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const LogoutActionButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: CustomColors.rose30),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsIcons.logout),
            const SizedBox(width: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: CustomColors.rose30,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
