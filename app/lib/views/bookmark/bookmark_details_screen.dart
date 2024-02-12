import 'package:animate_do/animate_do.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/bookmark/widgets/bookmark_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkDetailsScreen extends StatelessWidget {
  const BookmarkDetailsScreen({
    super.key,
    required this.type,
    required this.bookmarks,
  });
  final String type;
  final List<BookmarkModel> bookmarks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Image.asset(ImageAssets.backArrowIcon),
        ),
        actions: const [],
      ), //VerseCard
      body: Padding(
        padding: EdgeInsets.all(Constance.padding16),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: bookmarks.length,
          itemBuilder: (context, index) => (index % 2 == 0)
              ? FadeInLeftBig(
                  duration: const Duration(milliseconds: 1200),
                  child: BookmarkCard(
                    model: bookmarks[index],
                    index: index,
                  ),
                )
              : FadeInRightBig(
                  duration: const Duration(milliseconds: 1200),
                  child: BookmarkCard(
                    model: bookmarks[index],
                    index: index,
                  ),
                ),
        ),
      ),
    );
  }
}
