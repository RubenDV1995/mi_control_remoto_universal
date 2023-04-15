import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/dundation_typo.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';

final ligthThemeWeincode = ThemeData(
    primaryColor: WeincodeColorsFoundation.primaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w700,
        fontSize: WeincodeTypographyFoundation.fontSizeH1,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
      displayMedium: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w900,
        fontSize: WeincodeTypographyFoundation.fontSizeH2,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
      displaySmall: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w400,
        fontSize: WeincodeTypographyFoundation.fontSizeH3,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
      headlineMedium: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w400,
        fontSize: WeincodeTypographyFoundation.fontSizeH4,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
      headlineSmall: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w400,
        fontSize: WeincodeTypographyFoundation.fontSizeH5,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
      titleLarge: TextStyle(
        fontFamily: WeincodeTypographyFoundation.familyHeadings,
        fontWeight: FontWeight.w400,
        fontSize: WeincodeTypographyFoundation.fontSizeH6,
        color: WeincodeColorsFoundation.darkTextColors,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: WeincodeColorsFoundation.primaryColorMat)
        .copyWith(background: WeincodeColorsFoundation.bgGray));

final darkThemeWeincode = ThemeData(
  primaryColor: WeincodeColorsFoundation.primaryColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w700,
      fontSize: WeincodeTypographyFoundation.fontSizeH1,
      color: WeincodeColorsFoundation.lightTextColors,
    ),
    displayMedium: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w900,
      fontSize: WeincodeTypographyFoundation.fontSizeH2,
      color: WeincodeColorsFoundation.lightTextColors,
    ),
    displaySmall: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH3,
      color: WeincodeColorsFoundation.lightTextColors,
    ),
    headlineMedium: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH4,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    headlineSmall: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH5,
      color: WeincodeColorsFoundation.darkTextColors,
    ),
    titleLarge: TextStyle(
      fontFamily: WeincodeTypographyFoundation.familyHeadings,
      fontWeight: FontWeight.w400,
      fontSize: WeincodeTypographyFoundation.fontSizeH6,
      color: WeincodeColorsFoundation.lightTextColors,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch: WeincodeColorsFoundation.primaryColorMat)
      .copyWith(background: WeincodeColorsFoundation.bgDark),
);
