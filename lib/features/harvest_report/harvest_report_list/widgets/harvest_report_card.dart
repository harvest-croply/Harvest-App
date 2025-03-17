import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_icons.dart';
import 'package:harvest_app/assets/assets_images.dart';

class HarvestReportCard extends StatelessWidget {
  const HarvestReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetsImages.market,
            width: 64,
            height: 64,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Laporan Panen',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.primeGreen30,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Field Area C1',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: CustomColors.neutral50,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColors.slate100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Orange',
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.grey600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColors.slate100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Melon',
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.grey600,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Harvest Date:',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: CustomColors.neutral40,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '2 Maret 2025',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: CustomColors.neutral40,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2 Maret 2025',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: CustomColors.neutral50,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '250 KG',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: CustomColors.neutral50,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          SvgPicture.asset(AssetsIcons.more)
        ],
      ),
    );
  }
}
