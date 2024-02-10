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
