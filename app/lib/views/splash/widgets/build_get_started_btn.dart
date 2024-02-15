import 'package:app/utils/app_string.dart';
import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container buildGetStartedBtn() {
  return Container(
    alignment: Alignment.center,
    width: 185.w,
    height: 60.h,
    padding: const EdgeInsets.all(17),
    decoration: Styles.decorationOfGetStartedBtn,
    child: Text(
      AppString.getStartedBtn,
      style: Styles.getStartedBtnTextStyle,
    ),
  );
}
