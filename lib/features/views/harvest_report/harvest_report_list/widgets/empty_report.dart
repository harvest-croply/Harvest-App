import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';

class EmptyReportWidget extends StatelessWidget {
  const EmptyReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 32),
        Image.asset(
          AssetsImages.report,
          width: MediaQuery.of(context).size.width - 32,
        ),
        const SizedBox(height: 8),
        Text(
          "Belum ada laporan panen yang dibuat!",
          style: GoogleFonts.openSans(
            color: CustomColors.neutral50,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
