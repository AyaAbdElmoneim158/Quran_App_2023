import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  // DrawerTheme --------------------------------------------------------
  static const drawerLightTheme = DrawerThemeData(
    backgroundColor: AppColors.kWitheColor,
  );
  static const drawerDarkTheme = DrawerThemeData(
    backgroundColor: AppColors.kbgDarkColor,
  );
  // BottomNavigationBarTheme --------------------------------------------------------
  static const bottomNavigationBarThemeLight = BottomNavigationBarThemeData(
    backgroundColor: AppColors.kWitheColor,
  );

  static const bottomNavigationBarThemeDart = BottomNavigationBarThemeData(
    backgroundColor: AppColors.kbgDark2Color,
    type: BottomNavigationBarType.fixed,
  );
  // AppBarTheme --------------------------------------------------------
  static AppBarTheme appBarThemeLight = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.kWitheColor,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.sp,
      color: AppColors.kPurpleD3Color,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.kWitheColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  static AppBarTheme appBarThemeDart = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.kbgDarkColor,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        color: AppColors.kWitheColor),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.kbgDarkColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  // TextLightStyle --------------------------------------------------------
  static TextStyle titleLargeLightStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle titleMediumLightStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kPurpleD3Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodySmallLightStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyMediumLightStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.kTextMediumColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyLargeLightStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle labelLargeLightStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kPurpleD2Color,
    fontFamily: AppString.poppinsFont,
  );
  // TextDarkStyle --------------------------------------------------------
  static TextStyle titleLargeDarkStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle titleMediumDarkStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodySmallDarkStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyMediumDarkStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.kTextDarkColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyLargeDarkStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle labelLargeDarkStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );
  //----------------------------------------------------------------
  static TextStyle getStartedBtnTextStyle = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.kWitheColor,
      fontFamily: AppString.poppinsFont);

  static Decoration decorationBottomNavbar = BoxDecoration(
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, -4),
        spreadRadius: 0,
        blurRadius: 16,
        color: const Color(0xffBAB0CE).withOpacity(0.2),
      )
    ],
  );

  static TextStyle? drawerQuranTextStyle() => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 32.sp,
        color: AppColors.kWitheColor,
        fontFamily: AppString.poppinsFont,
      );

  static TextStyle? drawerQuranDescTextStyle(context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kbgDark2Color,
            fontFamily: AppString.poppinsFont,
          );

  static TextStyle? splashDecTextStyle(context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            fontFamily: AppString.poppinsFont,
          );

  static TextStyle? splashAppNameTextStyle(context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 28.sp,
            fontFamily: AppString.poppinsFont,
          );

  static TextStyle? ayahNo1TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? alFatiahTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? lastReadTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );
  static Gradient cardGradientColors = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.kPurpleD0Color,
      AppColors.kPurpleD00Color,
    ],
  );

  static TextStyle? asslamualaikumTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: AppColors.kTextMediumColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? ayetArTextStyle(context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            fontFamily: AppString.amiriFont,
          );
  static TextStyle? ayetEnTextStyle(context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.kTextDarkColor,
            fontFamily: AppString.poppinsFont,
          );

  static TextStyle? indexTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? nameTranslationTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 26.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? nameEnTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle? versesTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );
}
