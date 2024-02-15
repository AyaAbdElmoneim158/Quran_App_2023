import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/views/hadith/cubit/hadith_cubit.dart';
import 'package:app/views/hadith/widgets/hadith_screen_list_view.dart';
import 'package:app/views/home/widgets/build_action.dart';
import 'package:app/views/home/widgets/build_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<HadithCubit>().hadithScaffoldKey,
      appBar: AppBar(
        title: BuildTitle(
          isSearch: context.watch<HadithCubit>().isSearch,
          controller: context.read<HadithCubit>().searchedTextEditingController,
          runFilter: (searchedChar) =>
              context.read<HadithCubit>().runFilter(searchedChar),
        ),
        actions: [
          BuildAction(
            isSearch: context.watch<HadithCubit>().isSearch,
            clearSearched: () => context.read<HadithCubit>().clearSearched(),
            startSearched: () =>
                context.read<HadithCubit>().startSearched(context),
          )
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () => context
              .read<HadithCubit>()
              .hadithScaffoldKey
              .currentState!
              .openDrawer(),
          icon: Image.asset(ImageAssets.menuIcon),
        ),
      ),
      drawer: buildCustomDrawer(context),
      body: const HadithScreenListView(),
    );
  }
}
