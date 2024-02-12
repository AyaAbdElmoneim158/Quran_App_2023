import 'dart:async';
import 'package:app/helper/audioplayers_helper.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

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

  final TextEditingController searchedTextEditingController =
      TextEditingController();
  bool isSearch = false;

  changeSearched() {
    isSearch = !isSearch;
    debugPrint("IsSearch: $isSearch");
  }

  void runFilter(String value) {
    List<SurahModel> results = [];
    if (value.isEmpty || searchedTextEditingController.text.isEmpty) {
      results = surahList;
    } else {
      results = surahList
          .where(
            (surah) =>
                surah.nameTranslation
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                surah.name.toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    searchedList = results;
    emit(RunSearchedState());
  }

  void startSearched(context) {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearched));
    isSearch = true;
    debugPrint('search');
    emit(StartSearchedState());
  }

  void stopSearched() {
    clearSearched();
    isSearch = false;
    searchedList = surahList;
    emit(StopSearchedState());
  }

  void clearSearched() {
    searchedTextEditingController.clear();
    searchedList = surahList;
    emit(ClearSearchedState());
  }

  Future<void> shareAyet(String ayet) async {
    return await Share.shareFiles(
      ['assets/images/quran_splash.png'],
      text: ayet,
    );
  }

  Duration audioDuration = Duration.zero;
  bool isPlay = false;

  Future<void> playAudio({required String path}) async {
    // audioDuration = Duration.zero;
    await AudioplayersHelper.play(path: path);
    audioDuration = (await AudioplayersHelper.getDuration(path: path))!;
    isPlay = true;
    Timer(audioDuration, () {
      isPlay = false;
    });
  }
}
