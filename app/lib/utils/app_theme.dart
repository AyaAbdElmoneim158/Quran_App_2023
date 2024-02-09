import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.kWitheColor,
        appBarTheme: Styles.appBarThemeLight,
        bottomNavigationBarTheme: Styles.bottomNavigationBarThemeLight,
        dialogBackgroundColor: AppColors.kWitheColor,
        textTheme:  TextTheme(
          titleLarge: Styles.titleLargeStyleLight,
          titleMedium: Styles.titleMediumStyleLight,
          bodySmall: Styles.bodySmallStyleLight,
          bodyMedium: Styles.bodyMediumStyleLight,
          bodyLarge: Styles.bodyLargeStyleLight,
          labelLarge: Styles.labelLargeStyleLight,
        ),
      );
  static ThemeData darkTheme() => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kbgDarkColor,
        appBarTheme: Styles.appBarThemeDart,
        dialogBackgroundColor: AppColors.kbgDarkColor,
        bottomNavigationBarTheme: Styles.bottomNavigationBarThemeDart,
        textTheme:  TextTheme(
          titleLarge: Styles.titleLargeStyleDark,
          titleMedium: Styles.titleMediumStyleDark,
          bodySmall: Styles.bodySmallStyleDark,
          bodyMedium: Styles.bodyMediumStyleDark,
          bodyLarge: Styles.bodyLargeStyleDark,
          labelLarge: Styles.labelLargeStyleDark,
        ),
      );
}
