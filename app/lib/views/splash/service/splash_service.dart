import 'dart:async';

import 'package:app/views/bottom_navbar/bottom_navbar.dart';
import 'package:get/get.dart';

class SplashService {
  static Timer goToBottomNavbar() => Timer(const Duration(seconds: 3), () {
        Get.to(() => const BottomNavbar());
      });
}
