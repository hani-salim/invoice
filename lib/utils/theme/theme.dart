import 'package:flutter/material.dart';
import 'package:invoice/utils/theme/custom_themes/elevated_button.dart';
import 'package:invoice/utils/theme/custom_themes/text_theme.dart';

// Light & Dark Elevated Button Theme
class HAppTheme {
  HAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    fontFamily: '',
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: HTextTheme.lightTextTheme,
    elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    fontFamily: '',
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: HTextTheme.darkTextTheme,
    elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
