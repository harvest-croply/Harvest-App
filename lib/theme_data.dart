import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harvest_app/app/constants/custom_colors.dart';

ThemeData buildTheme(brightness) {
  var baseTheme = ThemeData(
    useMaterial3: false,
    brightness: brightness,
  );

  return baseTheme.copyWith(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CustomColors.primeGreen30,
    ),
    textTheme: GoogleFonts.interTextTheme(
      baseTheme.textTheme.copyWith(
        // Title 1
        titleLarge: const TextStyle(
          color: Colors.black,
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        // Title 2
        titleMedium: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        // Title 3
        titleSmall: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        // Body 1
        bodyLarge: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        // Body 2
        bodyMedium: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        // Body 3
        bodySmall: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        // Button Large
        labelLarge: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        // Button Medium
        labelMedium: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        // Button Small
        labelSmall: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
