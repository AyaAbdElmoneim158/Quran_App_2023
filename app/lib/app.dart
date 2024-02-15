import 'package:app/utils/app_router.dart';
import 'package:app/utils/app_theme.dart';
import 'package:app/views/azhkar/cubit/azhkar_cubit.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bottom_navbar/cubit/bottom_navbar_cubit.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'utils/app_string.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(374, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MultiBlocProvider(
        providers: [
          BlocProvider<BottomNavbarCubit>(
            create: (BuildContext context) => BottomNavbarCubit(),
          ),
          BlocProvider<HomeCubit>(
            create: (BuildContext context) => HomeCubit()..fetchSurahDataList(),
          ),
          BlocProvider<BookmarkCubit>(
            create: (BuildContext context) => BookmarkCubit()..getBookmarks(),
          ),
          // BlocProvider<HadithCubit>(create: (BuildContext context) {
          //   var cubit = HadithCubit();
          //   cubit.fetchHadiths().then(
          //         (value) => cubit.emit(
          //           LoadingAll(),
          //           //! Cal Fun emit LoadingAll
          //         ),
          //       );
          //   return HadithCubit();
          // }),
          BlocProvider<AzhkarCubit>(
            create: (BuildContext context) =>
                AzhkarCubit()..fetchAzhkarDataList(),
          ),
        ],
        child: GetMaterialApp(
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: ThemeMode.system,
          initialRoute: Routes.initRoute,
          getPages: getPages,
          unknownRoute: unknownRoute(),
          // home: const HomeScreen(),
        ),
      ),
    );
  }
}
