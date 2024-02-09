import 'package:app/views/splash/service/splash_service.dart';
import 'package:app/views/splash/widgets/splash_image.dart';
import 'package:app/views/splash/widgets/splash_intro_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SplashIntroText(),
            SizedBox(height: 49.h),
            const SplashImage(),
          ],
        ),
      ),
    );
  }
}
