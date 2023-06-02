import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// Class for theme definitions
class AppTheme {
  /// main theme data of the app
  static final theme = ThemeData(
    splashColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.highlightedViolet,
    ),
    fontFamily: "Josefin",
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 20, color: AppColors.plainWhite),
      displayLarge: TextStyle(fontSize: 96, color: AppColors.plainWhite),
      titleLarge: TextStyle(fontSize: 16, color: AppColors.plainWhite),
      headlineMedium: TextStyle(fontSize: 32, color: AppColors.plainWhite),
      headlineLarge: TextStyle(fontSize: 40, color: AppColors.plainWhite),
      titleSmall: TextStyle(fontSize: 12, color: AppColors.plainWhite),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return AppColors.highlightedViolet;
          }

          if (states.contains(MaterialState.disabled)) {
            return AppColors.darkerGrey;
          }

          return AppColors.darkerGrey;
        },
      ),
      prefixIconColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return AppColors.highlightedViolet;
          }

          if (states.contains(MaterialState.disabled)) {
            return AppColors.grey;
          }

          return AppColors.grey;
        },
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
    ),
  );
}
