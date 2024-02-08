import 'package:app/app.dart';
import 'package:app/not_found_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String initRoute = "/";
  static const String noFoundRoute = "/notFound";
}

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: Routes.initRoute,
    page: () => const QuranApp(),
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
