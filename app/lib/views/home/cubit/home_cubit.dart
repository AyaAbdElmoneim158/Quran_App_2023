import 'package:app/utils/asset_manager.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
  List _items = [];
  List<dynamic> searchedList = [];
  List<SurahModel> surahList = [];

  void fetchSurahDataList() async {
    if (surahList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchSurahDataListLoading());
      final String response =
          await rootBundle.loadString(ImageAssets.quranJson);
      var data = await json.decode(response);
      _items = data;
      surahList = _items.map((ele) => SurahModel.fromJson(ele)).toList();
      searchedList = surahList;
      debugPrint("Fetch SurahDataList Success : ${surahList.length}");
      emit(FetchSurahDataListSuccess());
    } catch (e) {
      debugPrint("Fetch SurahDataList Error: ${e.toString()}");
      emit(FetchSurahDataListError(e.toString()));
    }
    debugPrint('len SuraList : ${surahList.length}');
  }
}
