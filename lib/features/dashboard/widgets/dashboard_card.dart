import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final Function onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          image,
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: CustomColors.primeGreen30,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subTitle,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      AssetsIcons.chevronRight,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
