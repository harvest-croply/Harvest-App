import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class CustomDropdown extends StatelessWidget {
  final String text;
  const CustomDropdown({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.surface10,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: CustomColors.neutral30,
                    ),
              ),
            ],
          ),
          SvgPicture.asset(
            AssetsIcons.chevronDown,
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
