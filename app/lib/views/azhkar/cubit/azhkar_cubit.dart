// ignore: unnecessary_import, depend_on_referenced_packages
// import 'package:app/helper/read_json.dart';
// import 'package:app/utils/asset_manager.dart';
import 'package:app/views/azhkar/model/azhkar_model.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import, depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../helper/jsons/adhkar.dart';
part 'azhkar_state.dart';

class AzhkarCubit extends Cubit<AzhkarState> {
  AzhkarCubit() : super(AzhkarInitial());
  static AzhkarCubit get(context) => BlocProvider.of(context);
  List<dynamic> searchedList = [];
  List<AzhkarModel> realAzhkarList = [];

  void fetchAzhkarDataList() async {
    if (realAzhkarList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchAzhkarDataListLoading());
      /*var data = await ReadJson.readJson(ImageAssets.azhkarJson);
      List items = data;
      realAzhkarList = items.map((ele) => AzhkarModel.fromJson(ele)).toList();*/
      realAzhkarList = adhkar.map((ele) => AzhkarModel.fromJson(ele)).toList();
      searchedList = realAzhkarList;
      debugPrint("Fetch AzhkarDataList Success : ${realAzhkarList.length}");
      emit(FetchAzhkarDataListSuccess());
    } catch (e) {
      debugPrint("Fetch AzhkarDataList Error: ${e.toString()}");
      emit(FetchAzhkarDataListError(e.toString()));
    }
    debugPrint('len AzhkarDataList : ${realAzhkarList.length}');
  }

  final GlobalKey<ScaffoldState> azhkarScaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController searchedTextEditingController =
      TextEditingController();
  bool isSearch = false;

  changeSearched() {
    isSearch = !isSearch;
    debugPrint("IsSearch: $isSearch");
  }

  void runFilter(String value) {
    List<AzhkarModel> results = [];
    if (value.isEmpty || searchedTextEditingController.text.isEmpty) {
      results = realAzhkarList;
    } else {
      results = realAzhkarList
          .where(
            (azhkar) =>
                azhkar.category.toLowerCase().contains(value.toLowerCase()) ||
                azhkar.category.toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    debugPrint("azhkar searchedList Len : ${searchedList.length} ");
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
    searchedList = realAzhkarList;
    emit(StopSearchedState());
  }

  void clearSearched() {
    searchedTextEditingController.clear();
    searchedList = realAzhkarList;
    emit(ClearSearchedState());
  }
}
