import 'package:app/utils/app_color.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';

class SurahHeaderIcons extends StatelessWidget {
  const SurahHeaderIcons({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kbgDark2Color.withOpacity(0.05),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 13.5,
            backgroundColor: AppColors.kPurpleD2Color,
            child: Text(
              "${index + 1}",
              style: Styles.indexTextStyle,
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () async {
                  debugPrint("Share");
                },
                child: Image.asset(ImageAssets.shareIcon),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () async {
                  debugPrint("Play");
                },
                child: false
                    ? Image.asset(ImageAssets.playFillIcon)
                    : Image.asset(ImageAssets.playOutlineIcon),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () async {
                  debugPrint("Add");
                },
                child: false
                    ? Image.asset(ImageAssets.bookmarkFillIcon)
                    : Image.asset(ImageAssets.bookmarkOutlineIcon),
              )
            ],
          ),
        ],
      ),
    );
  }
}
