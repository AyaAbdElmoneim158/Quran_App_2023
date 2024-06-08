import 'package:animate_do/animate_do.dart';
import 'package:app/views/splash/widgets/splash_image.dart';
import 'package:app/views/splash/widgets/splash_intro_text.dart';
import 'package:flutter/material.dart';

import 'service/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashService.goToBottomNavbar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ZoomIn(
              duration: const Duration(milliseconds: 700),
              child: const SplashIntroText(),
            ),
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: const SplashImage(),
            ),
          ],
        ),
      ),
    );
  }
}
