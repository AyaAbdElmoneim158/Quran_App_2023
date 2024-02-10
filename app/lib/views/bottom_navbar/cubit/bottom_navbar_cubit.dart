import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  BottomNavbarCubit() : super(BottomNavbarInitial());
  static BottomNavbarCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens(context) => [
        Center(
            child: Text(
          "Home Screen",
          style: Theme.of(context).textTheme.headlineMedium,
        )),
        Center(
            child: Text(
          "Hadith Screen",
          style: Theme.of(context).textTheme.headlineMedium,
        )),
        Center(
            child: Text(
          "Azhkar Screen",
          style: Theme.of(context).textTheme.headlineMedium,
        )),
        Center(
            child: Text(
          "Bookmark Screen",
          style: Theme.of(context).textTheme.headlineMedium,
        )),
      ];
  List<BottomNavigationBarItem> items() => [
        BottomNavigationBarItem(
          icon: Image.asset(
            (currentIndex == 0)
                ? ImageAssets.quranPurpleIcon
                : ImageAssets.quranGrayIcon,
          ),
          label: AppString.bottomNavigationBarItemQuranText,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            (currentIndex == 1)
                ? ImageAssets.prayerPurpleIcon
                : ImageAssets.prayerGrayIcon,
          ),
          label: AppString.bottomNavigationBarItemPrayerText,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            (currentIndex == 2)
                ? ImageAssets.prayPurpleIcon
                : ImageAssets.prayGrayIcon,
          ),
          label: AppString.bottomNavigationBarItemPrayText,
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            (currentIndex == 3)
                ? ImageAssets.bookmarkPurpleIcon
                : ImageAssets.bookmarkGrayIcon,
          ),
          label: AppString.bottomNavigationBarItemBookmarkText,
        ),
      ];

  void changeBottomNavbar(int value) {
    currentIndex = value;
    emit(ChangeBottomNavbarState());
  }
}
