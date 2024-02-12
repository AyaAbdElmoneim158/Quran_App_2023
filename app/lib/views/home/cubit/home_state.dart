part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class FetchSurahDataListLoading extends HomeState {}

final class FetchSurahDataListSuccess extends HomeState {}

final class FetchSurahDataListError extends HomeState {
  final String error;
  FetchSurahDataListError(this.error);
}

final class ClearSearchedState extends HomeState {}

final class StopSearchedState extends HomeState {}

final class StartSearchedState extends HomeState {}

final class RunSearchedState extends HomeState {}

final class AddBookmarkLoading extends HomeState {}

final class AddBookmarkSuccess extends HomeState {}

final class AddBookmarkError extends HomeState {
  final String error;
  AddBookmarkError(this.error);
}

class BookmarkLoadSuccessState extends HomeState {
  // final List<BookmarkModel> bookmarks;BookmarkLoadSuccessState({required this.bookmarks});
}

class BookmarkErrorState extends HomeState {
  final String message;

  BookmarkErrorState({required this.message});
}