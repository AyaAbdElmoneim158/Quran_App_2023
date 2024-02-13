// bookmark_cubit.dart
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  final String _boxName = 'bookmarkBox';
  static BookmarkCubit get(context) => BlocProvider.of(context);
  BookmarkCubit() : super(BookmarkInitialState());
  List<BookmarkModel> surahBookmarks = [];
  List<BookmarkModel> hadithBookmarks = [];
  List<BookmarkModel> zhkarBookmarks = [];

  List<BookmarkModel> bookmarks = []; //BookmarkModel.dummyBookmarks;
  // Retrieve all bookmarks from the Hive box
  Future<void> getBookmarks() async {
    try {
      final box = await Hive.openBox<BookmarkModel>(_boxName);
      bookmarks = box.values.toList();
      filterSurahBookmarks();
      emit(BookmarkLoadSuccessState()); //)
    } catch (e) {
      emit(BookmarkErrorState(message: 'Failed to load bookmarks'));
    }
  }

  // Add a new bookmark to the Hive box
  Future<void> addBookmark(BookmarkModel bookmark) async {
    try {
      final box = await Hive.openBox<BookmarkModel>(_boxName);
      if (!isBookmarked(bookmark.text)) {
        await box.add(bookmark);
        await getBookmarks();
      }
//! Todo:- Delete by bookmark.text-------------------------------------------
      emit(BookmarkLoadSuccessState());
    } catch (e) {
      emit(BookmarkErrorState(message: 'Failed to add bookmark'));
    }
  }

  // Update an existing bookmark in the Hive box
  Future<void> updateBookmark(int index, BookmarkModel updatedBookmark) async {
    try {
      final box = await Hive.openBox<BookmarkModel>(_boxName);
      await box.putAt(index, updatedBookmark);
      emit(BookmarkLoadSuccessState());
    } catch (e) {
      emit(BookmarkErrorState(message: 'Failed to update bookmark'));
    }
  }

  // Delete a bookmark from the Hive box
  Future<void> deleteBookmark(int index) async {
    try {
      final box = await Hive.openBox<BookmarkModel>(_boxName);
      await box.deleteAt(index);
      await getBookmarks();
      emit(BookmarkLoadSuccessState());
    } catch (e) {
      emit(BookmarkErrorState(message: 'Failed to delete bookmark'));
    }
  }

  /* bool isBookmarked(String searchText) {
    final existingBookmark = bookmarks.firstWhere(
      (bookmark) => bookmark.text == searchText,
      orElse: () => null,
    );

    return existingBookmark != null;
  }*/
  bool isBookmarked(String searchText) {
    final box = Hive.box<BookmarkModel>('bookmarkBox');
    return box.values.any((bookmark) => bookmark.text == searchText);
  }

  Future<void> clearAllBookmarks() async {
    try {
      final box = await Hive.openBox<BookmarkModel>('bookmarkBox');
      await box.clear();
      await getBookmarks();
      emit(BookmarkLoadSuccessState());
    } catch (e) {
      emit(BookmarkErrorState(message: 'Failed to clear bookmarks'));
    }
  }

  filterSurahBookmarks() {
    surahBookmarks =
        bookmarks.where((bookmark) => bookmark.type == "surah").toList();
    hadithBookmarks =
        bookmarks.where((bookmark) => bookmark.type == "hadith").toList();

    zhkarBookmarks =
        bookmarks.where((bookmark) => bookmark.type == "zhkar").toList();
  }
}
