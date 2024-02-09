import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  static TextStyle titleLargeStyleLight = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle titleMediumStyleLight = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kPurpleD3Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodySmallStyleLight = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyMediumStyleLight = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.kTextMediumColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyLargeStyleLight = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.kPurpleD6Color,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle labelLargeStyleLight = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kPurpleD2Color,
    fontFamily: AppString.poppinsFont,
  );
  // TextStyleDark --------------------------------------------------------
  static TextStyle titleLargeStyleDark = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle titleMediumStyleDark = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodySmallStyleDark = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyMediumStyleDark = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.kTextDarkColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle bodyLargeStyleDark = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.kWitheColor,
    fontFamily: AppString.poppinsFont,
  );

  static TextStyle labelLargeStyleDark = TextStyle(
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
}
