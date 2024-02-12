import 'package:app/app.dart';
import 'package:app/bloc_observer.dart';
import 'package:app/helper/audioplayers_helper.dart';
import 'package:app/helper/bookmark_service.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  AudioplayersHelper.init();

  await Hive.initFlutter();
  Hive.registerAdapter(BookmarkModelAdapter());
  await BookmarkService.initialize();

//-> only be allowed to run in the portrait-up orientation.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const QuranApp()));
}
