import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/shared/widgets/action_button.dart';

class EmptyReportDashboard extends StatelessWidget {
  const EmptyReportDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsImages.gardeningIlusstration,
          height: 170,
        ),
        const SizedBox(height: 8),
        Text(
          "Belum ada laporan panen yang dibuat!",
          style: TextStyle(
            color: CustomColors.neutral50,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Buat laporan panen terlebih dahulu untuk menampilkan grafik",
          style: TextStyle(
            color: CustomColors.neutral40,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        ActionButton(
          text: '+ Buat Laporan Panen',
          onTap: () {},
        )
      ],
    );
  }
}
