part of 'hadith_cubit.dart';

@immutable
sealed class HadithState {}

final class HadithInitial extends HadithState {}

final class LoadingAll extends HadithState {}

final class FetchHadithLoading extends HadithState {}

final class FetchHadithSuccess extends HadithState {}

final class FetchHadithError extends HadithState {
  final String error;
  FetchHadithError(this.error);
}

final class ClearSearchedState extends HadithState {}

final class StopSearchedState extends HadithState {}

final class StartSearchedState extends HadithState {}

final class RunSearchedState extends HadithState {}
