import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:app/views/home/surah_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, required this.surah, required this.index});

  final SurahModel surah;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(SurahDetailsScreen(surah: surah), transition: Transition.zoom);
        debugPrint("Pushing to SurahDetailsScreen");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(ImageAssets.starIcon),
                  Text(
                    '${index + 1}',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    surah.nameTranslation,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "${surah.typeEn}  ${surah.array.length} verses ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              )
            ],
          ),
          Text(
            surah.name,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontFamily: AppString.amiriFont,
                ),
          ),
        ],
      ),
    );
  }
}
