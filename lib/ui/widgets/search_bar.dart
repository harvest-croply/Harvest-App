import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final Function? onTap;
  const CustomSearchBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: CustomColors.surface10,
          prefixIcon: Icon(
            Icons.search,
            color: CustomColors.neutral40,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintText: 'Cari Lokasi',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: CustomColors.surface10,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: CustomColors.surface10,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: CustomColors.surface10,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: CustomColors.primeGreen30),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: CustomColors.neutral50,
            ),
      ),
    );
  }
}
