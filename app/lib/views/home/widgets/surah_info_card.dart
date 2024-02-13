import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BuildGeneralCard buildSurahInfoCard(SurahModel surah) {
  return BuildGeneralCard(
    height: 265.h,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                surah.nameTranslation,
                style: Styles.nameTranslationTextStyle,
              ),
              const SizedBox(height: 4),
              Text(
                surah.nameEn,
                style: Styles.nameEnTextStyle,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: buildCustomDivider(),
              ),
              const SizedBox(height: 8),
              Text(
                "${surah.typeEn}  ${surah.array.length} verses ",
                style: Styles.versesTextStyle,
              ),
            ],
          ),
          Image.asset(ImageAssets.allahNameImage)
        ],
      ),
    ),
  );
}
