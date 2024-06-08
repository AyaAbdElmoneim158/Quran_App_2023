import 'package:animate_do/animate_do.dart';
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
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: Styles.cardGradientColors,
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child:
                // Text("data"),
                Stack(
              children: [
                const SizedBox(height: 38),
                Positioned(
                  left: 24,
                  top: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInLeftBig(
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          AppString.appName,
                          style: Styles.drawerQuranTextStyle(),
                        ),
                      ),
                      const SizedBox(height: 8),
                      FadeInLeftBig(
                        duration: const Duration(milliseconds: 750),
                        child: Text(
                          AppString.splashText,
                          style: Styles.drawerQuranDescTextStyle(context),
                        ),
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
          // _buildTopHeader(context),
          _buildChangeTheme(context),
        ],
      ),
    );
  }

  Widget _buildTopHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Styles.cardGradientColors,
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          const SizedBox(height: 38),
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
      child: GestureDetector(
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
