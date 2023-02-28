import 'package:ecommerce/views/common_widgets/custom_text.dart';
import 'package:ecommerce/views/constants/colors.dart' as app;
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.Colors.white,
    colorScheme: ColorScheme.light(
      primary: app.Colors.mainBlue,
      secondary: app.Colors.deepBlue,
      error: app.Colors.error,
      background: app.Colors.white,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(fontSize: 28),
      displayMedium: CustomText.createCustomTajawalTextStyle(fontSize: 22),
      displaySmall: CustomText.createCustomTajawalTextStyle(fontSize: 18),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold
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
    scaffoldBackgroundColor: app.Colors.deepBlue,
    colorScheme: ColorScheme.light(
      primary: app.Colors.mainBlue,
      secondary: app.Colors.deepBlue,
      error: app.Colors.error,
      background: app.Colors.deepBlue,
      brightness: Brightness.dark
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(fontSize: 28),
      displayMedium: CustomText.createCustomTajawalTextStyle(fontSize: 22),
      displaySmall: CustomText.createCustomTajawalTextStyle(fontSize: 18),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold
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