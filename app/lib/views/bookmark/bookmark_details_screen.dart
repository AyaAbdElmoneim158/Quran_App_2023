import 'package:app/views/bookmark/widgets/bookmark_details_app_bar.dart';
import 'package:app/views/bookmark/widgets/bookmark_details_list_view.dart';
import 'package:flutter/material.dart';

class BookmarkDetailsScreen extends StatelessWidget {
  const BookmarkDetailsScreen({
    super.key,
    required this.type,
    // required this.bookmarks,
  });
  final String type;
  // final List<BookmarkModel> bookmarks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BookmarkDetailsAppBar(type: type), //VerseCard
      body: BookmarkDetailsListView(type: type),
    );
  }
}
