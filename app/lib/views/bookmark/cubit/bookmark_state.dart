// bookmark_state.dart
part of 'bookmark_cubit.dart';

abstract class BookmarkState {}

class BookmarkInitialState extends BookmarkState {}

class BookmarkLoadSuccessState extends BookmarkState {
  // final List<BookmarkModel> bookmarks;BookmarkLoadSuccessState({required this.bookmarks});
}

class BookmarkErrorState extends BookmarkState {
  final String message;

  BookmarkErrorState({required this.message});
}
