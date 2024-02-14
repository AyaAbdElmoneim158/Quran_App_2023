import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/hadith/hadith_details_screen.dart';
import 'package:app/views/hadith/models/hadith_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

GestureDetector buildHadithCard(int index, HadithModel hadith) {
  return GestureDetector(
    onTap: () {
      Get.to(HadithDetailsScreen(hadith: hadith));
    },
    child: BuildGeneralCard(
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Image.asset(
                ImageAssets.bookIcon,
                width: 20.w,
                height: 20.h,
              ),
              const SizedBox(width: 8),
              Text(
                AppString.hadith,
                style: Styles.hadithTextStyle,
              ),
            ]),
            Text(
              hadith.category,
              style: Styles.hadithCategoryTextStyle,
            ),
          ],
        ),
      ),
    ),
  );
}
