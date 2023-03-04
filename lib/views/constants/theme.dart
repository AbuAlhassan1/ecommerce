import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/colors.dart' as app;
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.ParadiseColors.white,
    colorScheme: ColorScheme.light(
      primary: app.ParadiseColors.mainBlue,
      secondary: app.ParadiseColors.deepBlue,
      error: app.ParadiseColors.error,
      background: app.ParadiseColors.white,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        color: app.ParadiseColors.offBlack
      ),
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: app.ParadiseColors.offBlack
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 16,
        color: app.ParadiseColors.offBlack
      ),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold,
        color: app.ParadiseColors.offBlack
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: app.ParadiseColors.offBlack
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold,
        color: app.ParadiseColors.offBlack
      ),

      labelLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),

      titleLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
    )
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.ParadiseColors.deepBlue,
    colorScheme: ColorScheme.light(
      primary: app.ParadiseColors.mainBlue,
      secondary: app.ParadiseColors.deepBlue,
      error: app.ParadiseColors.error,
      background: app.ParadiseColors.deepBlue,
      brightness: Brightness.dark
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        color: app.ParadiseColors.white
      ),
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: app.ParadiseColors.white
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 16,
        color: app.ParadiseColors.white
      ),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold,
        color: app.ParadiseColors.white
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: app.ParadiseColors.white
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold,
        color: app.ParadiseColors.white
      ),

      labelLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),

      titleLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
    )
  );
}