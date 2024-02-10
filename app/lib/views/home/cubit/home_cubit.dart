import 'dart:async';

import 'package:app/views/home/model/surah_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
  List<SurahModel> surahies = [];

  fetchSurahies() {
    emit(LoadingSurahies());
    Timer(const Duration(seconds: 3), () {
      surahies = SurahModel.dummySurah;
      emit(FetchIngSurahies());
    });
  }
}
