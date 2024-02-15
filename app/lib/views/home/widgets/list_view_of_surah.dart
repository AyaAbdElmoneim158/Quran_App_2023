import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:app/views/home/widgets/surah_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewOfSurah extends StatelessWidget {
  const ListViewOfSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return (state is FetchSurahDataListLoading)
            ? buildLoading(context)
            : (cubit.searchedList.isEmpty)
                ? buildEmptyList(context)
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: cubit.searchedList.length,
                    itemBuilder: (context, index) {
                      var item = cubit.searchedList[index];
                      return (index % 2 == 0)
                          ? FadeInLeftBig(
                              duration: const Duration(milliseconds: 1200),
                              child: SurahCard(index: index, surah: item),
                            )
                          : FadeInRightBig(
                              duration: const Duration(milliseconds: 1200),
                              child: SurahCard(index: index, surah: item),
                            );
                    });
      },
    );
  }
}
