import 'package:app/views/not_found_page.dart';
import 'package:app/views/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String initRoute = "/";
  static const String noFoundRoute = "/notFound";
}

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: Routes.initRoute,
    page: () => const SplashScreen(),
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
