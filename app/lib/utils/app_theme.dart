import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.kWitheColor,
        appBarTheme: Styles.appBarThemeLight,
        bottomNavigationBarTheme: Styles.bottomNavigationBarThemeLight,
        dialogBackgroundColor: AppColors.kWitheColor,
        drawerTheme: Styles.drawerLightTheme,
        textTheme: TextTheme(
          titleLarge: Styles.titleLargeLightStyle,
          titleMedium: Styles.titleMediumLightStyle,
          bodySmall: Styles.bodySmallLightStyle,
          bodyMedium: Styles.bodyMediumLightStyle,
          bodyLarge: Styles.bodyLargeLightStyle,
          labelLarge: Styles.labelLargeLightStyle,
        ),
      );
  static ThemeData darkTheme() => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kbgDarkColor,
        appBarTheme: Styles.appBarThemeDart,
        dialogBackgroundColor: AppColors.kbgDarkColor,
        bottomNavigationBarTheme: Styles.bottomNavigationBarThemeDart,
        drawerTheme: Styles.drawerDarkTheme,
        textTheme: TextTheme(
          titleLarge: Styles.titleLargeDarkStyle,
          titleMedium: Styles.titleMediumDarkStyle,
          bodySmall: Styles.bodySmallDarkStyle,
          bodyMedium: Styles.bodyMediumDarkStyle,
          bodyLarge: Styles.bodyLargeDarkStyle,
          labelLarge: Styles.labelLargeDarkStyle,
        ),
      );
}
