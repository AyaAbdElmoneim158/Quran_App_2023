import 'package:animate_do/animate_do.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/constance.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/bottom_navbar/cubit/bottom_navbar_cubit.dart';
import 'package:app/views/bottom_navbar/widgets/custom_drawer.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:app/views/home/widgets/quran_card.dart';
import 'package:app/views/home/widgets/surah_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<HomeCubit>().homeScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => context
              .read<HomeCubit>()
              .homeScaffoldKey
              .currentState!
              .openDrawer(),
          icon: Image.asset(ImageAssets.menuIcon),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            CustomDrawer(
              isDarkMode: context.read<BottomNavbarCubit>().theme,
              onTap: () => context.read<BottomNavbarCubit>().switchTheme(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Constance.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIntroText(context),
              quranCard(),
              const SizedBox(height: 24),
              const ListViewOfSurah(),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewOfSurah extends StatelessWidget {
  const ListViewOfSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return (state is LoadingSurahies)
            ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Center(
                  child: Image.asset(
                    ImageAssets.loading1Image,
                    height: 150,
                  ),
                ),
              )
            : cubit.surahies.isEmpty
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageAssets.search2Icon,
                            height: 130,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            AppString.emptyList,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  )
                : state is FetchIngSurahies
                    ? ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                        itemCount: cubit.surahies.length,
                        itemBuilder: (context, index) => index % 2 == 0
                            ? FadeInLeftBig(
                                duration: const Duration(milliseconds: 1200),
                                child: SurahCard(
                                  index: index,
                                  surah: cubit.surahies[index],
                                ),
                              )
                            : FadeInRightBig(
                                duration: const Duration(milliseconds: 1200),
                                child: SurahCard(
                                  index: index,
                                  surah: cubit.surahies[index],
                                ),
                              ),
                      )
                    : Container();
      },
    );
  }
}

Widget _buildIntroText(context) {
  return FadeInLeft(
    duration: const Duration(milliseconds: 800),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.asslamualaikum,
          style: Styles.asslamualaikumTextStyle,
        ),
        const SizedBox(height: 4),
        Text(
          AppString.tanvirAhassan,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    ),
  );
}
