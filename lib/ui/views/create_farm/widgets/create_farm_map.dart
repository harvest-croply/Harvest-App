import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';
import 'package:harvest_app/assets/assets_images.dart';
import 'package:harvest_app/ui/views/create_farm/widgets/create_farm_map_selector.dart';

class CreateFarmMap extends StatefulWidget {
  const CreateFarmMap({super.key});

  @override
  State<CreateFarmMap> createState() => _CreateFarmMapState();
}

class _CreateFarmMapState extends State<CreateFarmMap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetsImages.map,
          width: MediaQuery.of(context).size.width,
          height: 170,
        ),
        const SizedBox(height: 8),
        Text(
          "Atur Lokasi Kebun Pertamamu!",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CustomColors.neutral50,
          ),
        ),
        const CreateFarmMapSelector(),
      ],
    );
  }
}
