import 'package:app/helper/read_json.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/hadith/models/hadith_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: unnecessary_import, depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'hadith_state.dart';

class HadithCubit extends Cubit<HadithState> {
  HadithCubit() : super(HadithInitial());
  static HadithCubit get(context) => BlocProvider.of(context);

  List<dynamic> abiDaudHadithList = [];
  List<dynamic> ahmedHadithList = [];
  List<dynamic> bukhariHadithList = [];
  List<dynamic> darimiHadithList = [];
  List<dynamic> ibnMajaHadithList = [];
  List<dynamic> malikHadithList = [];
  List<dynamic> muslimHadithList = [];
  List<dynamic> nasaiHadithList = [];
  List<dynamic> trmiziHadithList = [];
  List<HadithModel> realHadiths = [];

  int count = 0;

  Future<void> fetchHadiths() async {
    await fetchAbiDaud();
    await fetchAhmed();
    await fetchBukhari();
    await fetchDarimi();
    await fetchIbnMaja();
    await fetchMalik();
    await fetchMuslim();
    await fetchNasai();
    await fetchTrmizi();

    // if (count == 9) {
    //   emit(FetchHadithsLoading());
    // }
    // Timer(const Duration(seconds: 5), () {
    //
    // });

    debugPrint("Len abiDaudHadithList: ${abiDaudHadithList.length}");
    debugPrint("Len ahmedHadithList: ${ahmedHadithList.length}");
    debugPrint("Len bukhariHadithList: ${bukhariHadithList.length}");
    debugPrint("Len darimiHadithList: ${darimiHadithList.length}");
    debugPrint("Len ibnMajaHadithList: ${ibnMajaHadithList.length}");
    debugPrint("Len malikHadithList: ${malikHadithList.length}");
    debugPrint("Len muslimHadithList: ${muslimHadithList.length}");
    debugPrint("Len nasaiHadithList: ${nasaiHadithList.length}");
    debugPrint("Len trmiziHadithList: ${trmiziHadithList.length}");
    debugPrint("╰┈➤ Len realHadiths: ${realHadiths.length}");
  }

  Future<void> fetchAbiDaud() async {
    if (abiDaudHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.abiDaudJson);
      abiDaudHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث ابي داود", //  Hadiths of Abu Dawood
          "array": abiDaudHadithList,
        }),
      );
      count++;
      debugPrint("count: $count");

      debugPrint(
          "Fetch abiDaudHadithList Success : ${abiDaudHadithList.length} --- ${realHadiths.length}");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchAhmed() async {
    if (ahmedHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.ahmedJson);
      ahmedHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": "احاديث أحمد ",
          "array": ahmedHadithList,
        }),
      );
      debugPrint(
          "Fetch ahmedHadithList Success : ${ahmedHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchBukhari() async {
    if (bukhariHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.bukhariJson);
      bukhariHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث البخاري",
          "array": bukhariHadithList,
        }),
      );
      debugPrint(
          "Fetch bukhariHadithList Success : ${bukhariHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchDarimi() async {
    if (darimiHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.darimiJson);
      darimiHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث درايمي ",
          "array": darimiHadithList,
        }),
      );
      debugPrint(
          "Fetch darimiHadithList Success : ${darimiHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchIbnMaja() async {
    if (ibnMajaHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.ibnMajaJson);
      ibnMajaHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث ابن ماجي",
          "array": ibnMajaHadithList,
        }),
      );
      debugPrint(
          "Fetch ibnMajaHadithList Success : ${ibnMajaHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchMalik() async {
    if (malikHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.malikJson);
      malikHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث مالك ",
          "array": malikHadithList,
        }),
      );
      debugPrint(
          "Fetch malikHadithList Success : ${malikHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchMuslim() async {
    if (muslimHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.muslimJson);
      muslimHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث مسلم",
          "array": muslimHadithList,
        }),
      );
      debugPrint(
          "Fetch muslimHadithList Success : ${muslimHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchNasai() async {
    if (nasaiHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.nasaiJson);
      nasaiHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث نساءي ",
          "array": nasaiHadithList,
        }),
      );
      debugPrint(
          "Fetch nasaiHadithList Success : ${nasaiHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  Future<void> fetchTrmizi() async {
    if (trmiziHadithList.isNotEmpty) {
      return;
    }
    try {
      emit(FetchHadithLoading());
      var data = await ReadJson.readJson(ImageAssets.trmiziJson);
      trmiziHadithList = data.sublist(0, 100);
      realHadiths.add(
        HadithModel.fromJson({
          "category": " احاديث تلميز ",
          "array": trmiziHadithList,
        }),
      );
      debugPrint(
          "Fetch trmiziHadithList Success : ${trmiziHadithList.length} --- ${realHadiths.length}");
      count++;
      debugPrint("count: $count");

      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

// ***********************************************************
  final TextEditingController searchedTextEditingController =
      TextEditingController();
  bool isSearch = false;
  final GlobalKey<ScaffoldState> hadithScaffoldKey = GlobalKey<ScaffoldState>();
  List<dynamic> searchedList = [];

  changeSearched() {
    isSearch = !isSearch;
    debugPrint("IsSearch: $isSearch");
  }

  void runFilter(String value) {
    List<HadithModel> results = [];
    if (value.isEmpty || searchedTextEditingController.text.isEmpty) {
      results = realHadiths;
    } else {
      results = realHadiths
          .where(
            (hadith) =>
                hadith.category.toLowerCase().contains(value.toLowerCase()) ||
                hadith.category.toLowerCase().contains(
                      value.toLowerCase(),
                    ),
          )
          .toList();
    }
    debugPrint("Hadiths searchedList Len : ${searchedList.length} ");

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
    searchedList = realHadiths;
    emit(StopSearchedState());
  }

  void clearSearched() {
    searchedTextEditingController.clear();
    searchedList = realHadiths;
    emit(ClearSearchedState());
  }
}
