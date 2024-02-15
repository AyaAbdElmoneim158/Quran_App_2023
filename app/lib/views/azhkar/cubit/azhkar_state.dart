part of 'azhkar_cubit.dart';

@immutable
sealed class AzhkarState {}

final class AzhkarInitial extends AzhkarState {}

final class FetchAzhkarDataListLoading extends AzhkarState {}

final class FetchAzhkarDataListSuccess extends AzhkarState {}

final class FetchAzhkarDataListError extends AzhkarState {
  final String error;
  FetchAzhkarDataListError(this.error);
}

final class ClearSearchedState extends AzhkarState {}

final class StopSearchedState extends AzhkarState {}

final class StartSearchedState extends AzhkarState {}

final class RunSearchedState extends AzhkarState {}
