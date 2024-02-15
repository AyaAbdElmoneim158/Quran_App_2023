import 'package:animate_do/animate_do.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget quranCard() {
  return ZoomIn(
    duration: const Duration(milliseconds: 700),
    child: Container(
      margin: EdgeInsets.only(top: Constance.padding16 * 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(Constance.radius10)),
        gradient: Styles.cardGradientColors,
      ),
      height: 131.h,
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(Constance.padding16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        ImageAssets.bookIcon,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    SizedBox(width: Constance.padding16 / 2),
                    Expanded(
                      flex: 11,
                      child: Text(
                        AppString.lastRead,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.lastReadTextStyle,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.alFatiah,
                      style: Styles.alFatiahTextStyle,
                    ),
                    Text(
                      AppString.ayahNo1,
                      style: Styles.ayahNo1TextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              ImageAssets.quranImage,
            ),
          )
        ],
      ),
    ),
  );
}
