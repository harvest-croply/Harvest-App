import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';

class FieldAreaLibraryCard extends StatelessWidget {
  final Function openBottomSheet;
  const FieldAreaLibraryCard({super.key, required this.openBottomSheet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            AssetsImages.field,
            width: 64,
            height: 64,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: SizedBox(
              height: 64,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Field Area",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: CustomColors.neutral50,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                          color: CustomColors.slate100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        child: Text(
                          "Strawberry",
                          style: TextStyle(
                            color: CustomColors.grey600,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      openBottomSheet();
                    },
                    child: SvgPicture.asset(
                      AssetsIcons.more,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
