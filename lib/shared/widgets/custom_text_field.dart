import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String placeHolder;
  final String? note;

  const CustomTextField({
    super.key,
    required this.text,
    required this.placeHolder,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: CustomColors.neutral50,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 44,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              filled: true,
              fillColor: CustomColors.surface10,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              hintText: placeHolder,
              enabledBorder: OutlineInputBorder(
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
                borderSide:
                    BorderSide(width: 1, color: CustomColors.primeGreen30),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: CustomColors.neutral50,
                ),
          ),
        ),
        if (note != null)
          Column(
            children: [
              const SizedBox(height: 4),
              Text(
                note ?? "",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.neutral30,
                ),
              ),
            ],
          ),
        const SizedBox(height: 16),
      ],
    );
  }
}
