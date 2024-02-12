import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class BookmarkService {
  static Box<BookmarkModel>? _bookmarkBox;

  static Future<void> initialize() async {
    _bookmarkBox = await Hive.openBox<BookmarkModel>('bookmarkBox');
  }

  static Future<bool> addOrUpdateBookmark(BookmarkModel newBookmark) async {
    int existingBookmarkIndex = await getBookmarkIndex(newBookmark.text);
    if (existingBookmarkIndex != -1) {
      getAllBookmarks(["surah", "hadith", "zhkar"]);
      await _bookmarkBox!.deleteAt(existingBookmarkIndex);
    }
    getAllBookmarks(["surah", "hadith", "zhkar"]);
    await _bookmarkBox!.add(newBookmark);
    return true;
  }

  static Future<int> addBookmark(BookmarkModel newBookmark) async {
    var response = await _bookmarkBox!.add(newBookmark);
    if (response > 0) {
      debugPrint("floatingActionButton Add Success: $response");
      getAllBookmarks(["surah", "hadith", "zhkar"]);
      return 1;
    }
    debugPrint("floatingActionButton Add Failure: $response");
    return -1;
  }

  static Future<int> getBookmarkIndex(String searchText) async {
    List<BookmarkModel> bookmarks = _bookmarkBox!.values.toList();
    for (int i = 0; i < bookmarks.length; i++) {
      if (bookmarks[i].text == searchText) {
        return i;
      }
    }
    return -1; // Bookmark not found
  }

  static Future<bool> checkBookmarkExists(String searchText) async {
    // Check if a bookmark with the specified text already exists
    return _bookmarkBox!.values.any((bookmark) => bookmark.text == searchText);
  }

  //! Get all bookmarks from the box and filter based on types
  static List<BookmarkModel> getAllBookmarks(List<String> types) {
    return _bookmarkBox!.values
        .where(
          (bookmark) => types.contains(
            bookmark.type,
          ),
        )
        .toList();
  }

//! Remove a bookmark from the box based on text
  static Future<void> removeBookmarkByText(String searchText) async {
    int bookmarkIndex = await getBookmarkIndex(searchText);
    if (bookmarkIndex != -1) {
      await _bookmarkBox!.deleteAt(bookmarkIndex);
    }
  }

  static Future<void> updateBookmark(
      int index, BookmarkModel newBookmark) async {
    await _bookmarkBox!.putAt(index, newBookmark);
  }

  static Future<void> deleteBookmark(int index) async {
    await _bookmarkBox!.deleteAt(index);
  }

  static Future<void> closeBox() async {
    await _bookmarkBox!.close();
  }

  static Future<int> clearBookmarks() async {
    getAllBookmarks(["surah", "hadith", "zhkar"]);
    return await _bookmarkBox!.clear();
  }
}
