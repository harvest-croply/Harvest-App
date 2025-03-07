import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/ui/widgets/custom_text_field.dart';

class FieldAreaFormStepTwo extends StatelessWidget {
  const FieldAreaFormStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Image.asset(
            AssetsImages.seedingIlustration,
            height: 170,
          ),
          const SizedBox(height: 8),
          Text(
            "Masukkan Jenis Tanaman",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: CustomColors.neutral50,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Image.asset(
                AssetsImages.seedling,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 4),
              Text(
                "Tanaman 1",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          const Divider(),
          const CustomTextField(
            text: "Nama tanaman",
            placeHolder: "Pilih Tanaman",
          ),
          const CustomTextField(
            text: "Varietas tanaman",
            placeHolder: "Pilih varietas tanaman",
          ),
          const CustomTextField(
            text: "Kode tanaman",
            placeHolder: "Pilih kode tanaman",
            note: "* Wajib diisi",
          ),
        ],
      ),
    );
  }
}
