part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class FetchIngSurahies extends HomeState {}// 
final class LoadingSurahies extends HomeState {}

