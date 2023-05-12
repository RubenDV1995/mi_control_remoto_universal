import 'package:flutter/material.dart';

import '../design_system_weincode/foundations/foundation_colors.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF1D1F21),
  canvasColor: Colors.grey[800],
  shadowColor: ThemeData.dark().shadowColor,
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.all(WeincodeColorsFoundation.primaryColor200),
    trackColor: MaterialStateProperty.all(Colors.grey[400]),
  ),
  colorScheme: const ColorScheme.dark(
    primary: WeincodeColorsFoundation.backgroundColorButtonDarkMode,
    secondary: WeincodeColorsFoundation.accentColor,
  ),
  dividerColor: Colors.orange,

  ///Text
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      color: WeincodeColorsFoundation.titleLargeDark,
      fontFamily: 'Milliard',
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.titleLargeDark,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.titleLargeDark,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: WeincodeColorsFoundation.backgroundColorLightMode,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.displayLarge,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.displayLarge,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    bodyLarge: TextStyle(
      fontSize: 20.0,
      color: WeincodeColorsFoundation.textToastDark,
      fontFamily: 'Milliard',
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.backgroundColorLightMode,
    ),
  ),
);

final lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFF6F6F6),
  canvasColor: Colors.grey[800],
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Colors.grey),
    trackColor: MaterialStateProperty.all(Colors.grey[300]),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: WeincodeColorsFoundation.primaryColor200,
  ),
  primarySwatch: Colors.grey,
  primaryColor: WeincodeColorsFoundation.accentColor,
  dividerColor: Colors.orange,

  ///Text
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      color: WeincodeColorsFoundation.titleLargeLight,
      fontFamily: 'Milliard',
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.titleLargeLight,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.titleLargeLight,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: WeincodeColorsFoundation.titleLargeLight,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.displayLarge,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.displayLarge,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: WeincodeColorsFoundation.primaryColor300,
    ),
    bodyLarge: TextStyle(
      fontSize: 20.0,
      color: WeincodeColorsFoundation.textToastDark,
      fontFamily: 'Milliard',
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: WeincodeColorsFoundation.backgroundColorLightMode,
    ),
  ),
);
