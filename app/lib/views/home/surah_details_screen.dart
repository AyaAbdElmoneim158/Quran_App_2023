import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/views/home/widgets/surah_info_card.dart';
import 'package:app/views/home/widgets/verse_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';

class SurahDetailsScreen extends StatelessWidget {
  const SurahDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var surah = Get.arguments["surah"];

    return Scaffold(
      appBar: AppBar(
          title: Text(surah.nameTranslation),
          elevation: 0,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Image.asset(ImageAssets.backArrowIcon),
          ),
          actions: const []),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Constance.padding16),
          child: Column(
            children: [
              ZoomIn(
                  duration: const Duration(milliseconds: 700),
                  child: buildSurahInfoCard(surah)),
              const SizedBox(height: 24),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: surah.array.length,
                itemBuilder: (context, index) => (index % 2 == 0)
                    ? FadeInLeftBig(
                        duration: const Duration(milliseconds: 1200),
                        child: VerseCard(surah: surah, index: index),
                      )
                    : FadeInRightBig(
                        duration: const Duration(milliseconds: 1200),
                        child: VerseCard(surah: surah, index: index),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
