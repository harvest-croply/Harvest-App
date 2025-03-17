import 'package:flutter/material.dart';
import 'package:harvest_app/features/views/create_farm/create_farm/widgets/create_farm_tree_image.dart';
import 'package:harvest_app/features/widgets/custom_text_field.dart';

class CreateFarmForm extends StatelessWidget {
  const CreateFarmForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CreateFarmTreeImage(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                text: 'Nama kebun',
                placeHolder: 'Ketikkan nama kebun Pertamamu',
                note: '*Wajib diisi',
              ),
              CustomTextField(
                text: 'Kode kebun',
                placeHolder: 'Buat kode unik kebun (Cth. CH001)',
                note: '*Opsional',
              ),
            ],
          ),
        )
      ],
    );
  }
}
