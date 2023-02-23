import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: LightThemeColors.black,
        weight: FontWeight.bold
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 20,
        color: LightThemeColors.black,
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: LightThemeColors.black,
      ),
      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 40,
        weight: FontWeight.bold,
        color: LightThemeColors.black,
      ),
      labelLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: LightThemeColors.grey
      ),
      labelMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: LightThemeColors.grey
      ),
      labelSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: LightThemeColors.grey
      ),
    ),
    scaffoldBackgroundColor: LightThemeColors.background,
    colorScheme: ColorScheme.light(
      primary: LightThemeColors.primary,
      primaryContainer: LightThemeColors.white,
      secondary: LightThemeColors.white,
      error: LightThemeColors.error,
      background: LightThemeColors.background,
      brightness: Brightness.light,
    )
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: DarkThemeColors.background,
    textTheme: TextTheme(
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: DarkThemeColors.white,
        weight: FontWeight.bold
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 20,
        color: DarkThemeColors.white,
      ),
      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 40,
        weight: FontWeight.bold,
        color: DarkThemeColors.white
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: DarkThemeColors.white
      ),
      labelLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: DarkThemeColors.grey
      ),
      labelMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: DarkThemeColors.grey
      ),
      labelSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        color: DarkThemeColors.grey
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: DarkThemeColors.primary,
      primaryContainer: DarkThemeColors.dark,
      secondary: DarkThemeColors.white,
      error: DarkThemeColors.error,
      background: DarkThemeColors.background,
      brightness: Brightness.dark
    )
  );
}