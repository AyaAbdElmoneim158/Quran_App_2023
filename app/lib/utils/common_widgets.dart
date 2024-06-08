import 'package:animate_do/animate_do.dart';
import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/bottom_navbar/cubit/bottom_navbar_cubit.dart';
import 'package:app/views/bottom_navbar/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              // height: 100,
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

Widget buildLoading(BuildContext context) {
  return Center(
    child: Center(
      child: Image.asset(
        ImageAssets.loading1Image,
        height: 150,
      ),
    ),
  );
}

Widget buildEmptyList(BuildContext context) {
  return ZoomIn(
    duration: const Duration(milliseconds: 750),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.notFoundImage,
            height: 130,
          ),
          const SizedBox(height: 8),
          Text(
            AppString.emptyList,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.kPurpleD3Color,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    ),
  );
}

SizedBox buildErrorFetchList(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.5,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.warningImage,
            height: 130,
          ),
          const SizedBox(height: 16),
          Text(
            AppString.errorList,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    ),
  );
}

Drawer buildCustomDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        CustomDrawer(
          isDarkMode: context.read<BottomNavbarCubit>().theme,
          onTap: () => context.read<BottomNavbarCubit>().switchTheme(),
        ),
      ],
    ),
  );
}
