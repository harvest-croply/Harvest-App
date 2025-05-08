import 'package:flutter/material.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

SnackBar customSnackBar(text) {
  return SnackBar(
    content: Text(text),
    backgroundColor: Colors.green,
    elevation: 10,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(8),
  );
}

SnackBar customDangerSnackBar(text) {
  return SnackBar(
    content: Text(text, style: TextStyle(color: CustomColors.rose40)),
    backgroundColor: CustomColors.rose10,
    elevation: 10,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(8),
  );
}
