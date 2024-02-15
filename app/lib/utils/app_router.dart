import 'package:app/views/azhkar/azhkar_details_screen.dart';
import 'package:app/views/bookmark/bookmark_details_screen.dart';
import 'package:app/views/hadith/hadith_details_screen.dart';
import 'package:app/views/home/surah_details_screen.dart';
import 'package:app/views/not_found_page.dart';
import 'package:app/views/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String initRoute = "/";
  static const String noFoundRoute = "/notFound";
  static const String surahDetails = "/surahDetails";
  static const String azhkarDetails = "/azhkarDetails";
  static const String hadithDetails = "/hadithDetails";
  static const String bookmarkDetails = "/bookmarkDetails";
}

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: Routes.initRoute,
    page: () => const SplashScreen(),
    transition: Transition.zoom,
  ),
  GetPage(
    name: Routes.surahDetails,
    page: () => const SurahDetailsScreen(),
    transition: Transition.zoom,
  ),
  GetPage(
    name: Routes.azhkarDetails,
    page: () => const AzhkarDetailsScreen(),
    transition: Transition.zoom,
  ),
  GetPage(
    name: Routes.hadithDetails,
    page: () => const HadithDetailsScreen(),
    transition: Transition.zoom,
  ),
  GetPage(
    name: Routes.bookmarkDetails,
    page: () => const BookmarkDetailsScreen(),
    transition: Transition.zoom,
  ),
];

GetPage<dynamic> unknownRoute() {
  return GetPage(
    name: Routes.noFoundRoute,
    page: () => const NotFoundScreen(),
    transition: Transition.zoom,
  );
}
