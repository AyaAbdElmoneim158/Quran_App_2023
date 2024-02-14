// ignore: unnecessary_import, depend_on_referenced_packages
import 'package:app/helper/read_json.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/views/azhkar/model/azhkar_model.dart';
import 'package:flutter/widgets.dart';
// ignore: unnecessary_import, depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      var data = await ReadJson.readJson(ImageAssets.azhkarJson);
      List items = data;
      realAzhkarList = items.map((ele) => AzhkarModel.fromJson(ele)).toList();

      searchedList = realAzhkarList;
      debugPrint("Fetch AzhkarDataList Success : ${realAzhkarList.length}");
      emit(FetchAzhkarDataListSuccess());
    } catch (e) {
      debugPrint("Fetch AzhkarDataList Error: ${e.toString()}");
      emit(FetchAzhkarDataListError(e.toString()));
    }
    debugPrint('len SuraList : ${realAzhkarList.length}');
  }
}
