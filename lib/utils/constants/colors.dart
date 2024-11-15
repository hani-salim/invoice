import 'package:flutter/material.dart';

class HColors {
  HColors._();

// App Basic Colors
  static const Color promaryColor = Color(0xB21708F0);
  static const Color secondaryColor = Color(0xE8C7E903);
  static const Color accent = Color(0xC1BCB8F5);

// Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(1, -1),
      colors: [
        Color(0xFFE03D3D),
        Color(0xFFCA6363),
        Color(0xFFF5B1B1),
      ]);

// Text Colors
  static const Color textPrimary = Color(0x841A191F);
  static const Color textSecondary = Color(0x001303E9);
  static const Color textWhite = Colors.white;

// Background Colors
  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF000000);
  static const Color primaryBackground = Color(0xCCE5E5E6);

// Background Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF000000);

// Button Colors
  static const Color buttonPrimary = Color(0xB21708F0);
  static const Color buttonSecondary = Color(0x9E7C7C7E);
  static const Color buttonDisabled = Color(0xECDDDCE2);

// Border Colors
  static const Color borderPrimary = Color.fromARGB(251, 209, 209, 219);
  static const Color borderSecondary = Color.fromARGB(242, 228, 228, 228);

// Error and Validate Colors
  static const Color error = Color(0xC0E90303);
  static const Color success = Color(0xFF02B311);
  static const Color warning = Color(0xFFF58302);
  static const Color info = Color(0xA00303AD);

// Neutral Shades
  static const Color black = Color(0xFF000000);
  static const Color darkerGray = Color(0xFF363636);
  static const Color darkGray = Color(0xFF585858);
  static const Color grey = Color(0xFF6E6E6E);
  static const Color softGray = Color(0xFBBDBDBD);
  static const Color lightGray = Color(0xFFE2E2E2);
  static const Color white = Colors.white;
}
