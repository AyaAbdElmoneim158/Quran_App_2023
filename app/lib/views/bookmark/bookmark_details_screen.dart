import 'package:app/views/bookmark/widgets/bookmark_details_app_bar.dart';
import 'package:app/views/bookmark/widgets/bookmark_details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkDetailsScreen extends StatelessWidget {
  const BookmarkDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var type = Get.arguments["type"];

    return Scaffold(
      appBar: BookmarkDetailsAppBar(type: type), //VerseCard
      body: BookmarkDetailsListView(type: type),
    );
  }
}
