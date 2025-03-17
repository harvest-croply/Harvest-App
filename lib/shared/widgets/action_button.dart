import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const ActionButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColors.primeGreen30,
        ),
        height: 44,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
