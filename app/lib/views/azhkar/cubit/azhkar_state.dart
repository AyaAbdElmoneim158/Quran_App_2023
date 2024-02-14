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
