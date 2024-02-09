import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/constance.dart';
import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container buildGetStartedBtn() {
  return Container(
    alignment: Alignment.center,
    width: 185.w,
    height: 60.h,
    padding: const EdgeInsets.all(17),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            offset: const Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25))
      ],
      color: AppColors.kColor,
      borderRadius: BorderRadius.all(Constance.radius30),
    ),
    child: Text(
      AppString.getStartedBtn,
      style: Styles.getStartedBtnTextStyle,
    ),
  );
}
