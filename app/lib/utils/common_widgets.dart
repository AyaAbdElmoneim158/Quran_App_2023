import 'package:app/utils/app_color.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:flutter/material.dart';

class BuildGeneralCard extends StatelessWidget {
  const BuildGeneralCard(
      {super.key, required this.height, required this.child});
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.kPurpleD0Color,
                  AppColors.kPurpleD00Color,
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              ImageAssets.quranLightImage,
              height: 100,
            ),
          ),
          child
        ],
      ),
    );
  }
}

Divider buildCustomDivider() {
  return Divider(
    height: 1,
    color: AppColors.kTextLight2Color.withOpacity(0.35),
    thickness: 1,
  );
}
