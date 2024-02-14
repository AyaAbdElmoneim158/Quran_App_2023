import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/azhkar/azhkar_details_screen.dart';
import 'package:app/views/azhkar/model/azhkar_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

GestureDetector buildAzhkarDetailsCard(
    int index, List<AzhkarModel> searchedList) {
  return GestureDetector(
    onTap: () {
      Get.to(AzhkarDetailsScreen(azhkar: searchedList[index]),
          transition: Transition.zoom);
    },
    child: BuildGeneralCard(
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const SizedBox(height: 8),
            Row(children: [
              Image.asset(
                "assets/icons/book.png",
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "Azhkar",
                style: Styles.bodySmallDarkStyle,
              ),
            ]),
            Text(
              searchedList[index].category,
              style: Styles.hadithCategoryTextStyle,
            ),
          ],
        ),
      ),
    ),
  );
}
