import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:app/views/home/widgets/surah_info_card.dart';
import 'package:app/views/home/widgets/verse_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurahDetailsScreen extends StatelessWidget {
  const SurahDetailsScreen({super.key, required this.surah});
  final SurahModel surah;
  @override
  Widget build(BuildContext context) {
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
              buildSurahInfoCard(surah),
              const SizedBox(height: 24),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: surah.array.length,
                itemBuilder: (context, index) =>
                    VerseCard(surah: surah, index: index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
