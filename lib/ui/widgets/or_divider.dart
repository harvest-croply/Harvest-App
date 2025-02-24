import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        greyDivider(context),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Atau",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: CustomColors.neutral30,
                  ),
            )),
        greyDivider(context),
      ],
    );
  }
}

Widget greyDivider(BuildContext context) {
  return Expanded(
    child: Container(
      height: 1,
      color: CustomColors.surface20,
    ),
  );
}
