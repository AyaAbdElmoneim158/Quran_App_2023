import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.warningImage,
              height: 150,
            ),
            const SizedBox(height: 32),
            Text(
              AppString.notFoundPage,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: AppString.poppinsFont,
                    color: Colors.black54,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
