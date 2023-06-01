import 'package:flugo_mobile/core/constants/app_colors.dart';
import 'package:flugo_mobile/core/constants/widget_constants.dart';

import 'package:flutter/material.dart';

class AppTheme {
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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            WidgetConstants.boxBorderRadius,
          ),
        ),
        backgroundColor: AppColors.highlightedViolet,
        foregroundColor: AppColors.plainWhite,
      ),
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
    cardTheme: const CardTheme(
      color: AppColors.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(WidgetConstants.boxBorderRadius),
        ),
      ),
    ),
  );
}
