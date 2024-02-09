import 'package:app/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashIntroText extends StatelessWidget {
  const SplashIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 28.sp,
              ),
        ),
        SizedBox(height: 16.h),
        Text(
          AppString.splashText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}