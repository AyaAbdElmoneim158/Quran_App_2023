import 'package:app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class Styles {
  // BottomNavigationBarTheme --------------------------------------------------------
  static const bottomNavigationBarThemeLight = BottomNavigationBarThemeData(
    backgroundColor: AppColors.kWitheColor,
  );

  static const bottomNavigationBarThemeDart = BottomNavigationBarThemeData(
    backgroundColor: AppColors.kbgDark2Color,
    type: BottomNavigationBarType.fixed,
  );
  // AppBarTheme --------------------------------------------------------
  static const appBarThemeLight = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.kWitheColor,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.kPurpleD3Color,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.kWitheColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  static const appBarThemeDart = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.kbgDarkColor,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColors.kWitheColor),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.kbgDarkColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  // TextStyleLight --------------------------------------------------------
  static const TextStyle titleLargeStyleLight = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: AppColors.kPurpleD6Color,
  );

  static const TextStyle titleMediumStyleLight = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.kPurpleD3Color,
  );

  static const TextStyle bodySmallStyleLight = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.kPurpleD6Color,
  );

  static const TextStyle bodyMediumStyleLight = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.kTextMediumColor,
  );

  static const TextStyle bodyLargeStyleLight = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.kPurpleD6Color,
  );

  static const TextStyle labelLargeStyleLight = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.kPurpleD2Color,
  );
  // TextStyleDark --------------------------------------------------------
  static const TextStyle titleLargeStyleDark = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: AppColors.kWitheColor,
  );

  static const TextStyle titleMediumStyleDark = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.kWitheColor,
  );

  static const TextStyle bodySmallStyleDark = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.kWitheColor,
  );

  static const TextStyle bodyMediumStyleDark = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.kTextDarkColor,
  );

  static const TextStyle bodyLargeStyleDark = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.kWitheColor,
  );

  static const TextStyle labelLargeStyleDark = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.kWitheColor,
  );
}
