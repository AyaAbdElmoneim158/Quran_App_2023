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

  fetchHadiths() {
    fetchAbiDaud();
    fetchAhmed();
    fetchBukhari();
    fetchDarimi();
    fetchIbnMaja();
    fetchMalik();
    fetchMuslim();
    fetchNasai();
    fetchTrmizi();
    debugPrint("Len abiDaudHadithList: ${abiDaudHadithList.length}");
    debugPrint("Len ahmedHadithList: ${ahmedHadithList.length}");
    debugPrint("Len bukhariHadithList: ${bukhariHadithList.length}");
    debugPrint("Len darimiHadithList: ${darimiHadithList.length}");
    debugPrint("Len ibnMajaHadithList: ${ibnMajaHadithList.length}");
    debugPrint("Len malikHadithList: ${malikHadithList.length}");
    debugPrint("Len muslimHadithList: ${muslimHadithList.length}");
    debugPrint("Len nasaiHadithList: ${nasaiHadithList.length}");
    debugPrint("Len trmiziHadithList: ${trmiziHadithList.length}");
    debugPrint("Len realHadiths: ${realHadiths.length}");
  }

  void fetchAbiDaud() async {
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
      debugPrint(
          "Fetch abiDaudHadithList Success : ${abiDaudHadithList.length} --- ${realHadiths.length}");
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchAhmed() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchBukhari() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchDarimi() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchIbnMaja() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchMalik() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchMuslim() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchNasai() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }

  void fetchTrmizi() async {
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
      emit(FetchHadithSuccess());
    } catch (e) {
      debugPrint("FetchHadithError: ${e.toString()}");
      emit(FetchHadithError(e.toString()));
    }
  }
}
