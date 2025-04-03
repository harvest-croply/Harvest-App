import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.surface10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AssetsIcons.calendar,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "Filter berdasarkan tanggal",
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
