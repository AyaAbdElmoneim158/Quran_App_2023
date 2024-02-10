import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    this.onTap,
    this.isDarkMode = ThemeMode.light,
  });
  final void Function()? onTap;
  final ThemeMode isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTopHeader(context),
        _buildChangeTheme(context),
      ],
    );
  }

  Widget _buildTopHeader(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.kPurpleD0Color, AppColors.kPurpleD00Color],
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          Positioned(
            left: 24,
            top: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.appName,
                  style: Styles.drawerQuranTextStyle(),
                ),
                const SizedBox(height: 8),
                Text(
                  AppString.splashText,
                  style: Styles.drawerQuranDescTextStyle(context),
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
    );
  }

  Widget _buildChangeTheme(context) {
    return Padding(
      padding: EdgeInsets.all(Constance.padding16),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (isDarkMode == ThemeMode.dark)
                ? const Icon(
                    Icons.dark_mode,
                    color: AppColors.kTextDarkColor,
                  )
                : const Icon(
                    Icons.light_mode,
                    color: AppColors.kTextMediumColor,
                  ), //: Icons.light_mode,

            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                (isDarkMode == ThemeMode.dark)
                    ? AppString.darkMode
                    : AppString.lightMode,
              ),
            )
          ],
        ),
      ),
    );
  }
}