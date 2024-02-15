import 'package:app/utils/app_router.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/home/model/surah_model.dart';
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
        Get.toNamed(Routes.surahDetails, arguments: {"surah": surah});
        debugPrint("Pushing to SurahDetailsScreen");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(ImageAssets.starIcon),
                      Text(
                        '${index + 1}',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surah.nameTranslation,
                        style: Theme.of(context).textTheme.bodyLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "${surah.typeEn}  ${surah.array.length} verses ",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              surah.name,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontFamily: AppString.amiriFont,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
