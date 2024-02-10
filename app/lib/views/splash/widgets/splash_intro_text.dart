import 'package:app/utils/app_string.dart';
import 'package:app/utils/styles.dart';
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
          style: Styles.splashAppNameTextStyle(context),
        ),
        SizedBox(height: 16.h),
        Text(
          AppString.splashText,
          textAlign: TextAlign.center,
          style: Styles.splashDecTextStyle(context),
        ),
      ],
    );
  }
}
