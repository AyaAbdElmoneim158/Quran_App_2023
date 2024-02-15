import 'package:animate_do/animate_do.dart';
import 'package:app/views/hadith/cubit/hadith_cubit.dart';
import 'package:app/views/hadith/widgets/hadith_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HadithScreenListView extends StatelessWidget {
  const HadithScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithCubit, HadithState>(
      builder: (context, state) {
        var cubit = HadithCubit.get(context);

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: cubit.realHadiths.length,
                itemBuilder: (context, index) {
                  var hadith = cubit.realHadiths[index];
                  return (index % 2 == 0)
                      ? FadeInLeftBig(
                          duration: const Duration(milliseconds: 1200),
                          child: buildHadithCard(
                            index,
                            hadith,
                          ),
                        )
                      : FadeInRightBig(
                          duration: const Duration(milliseconds: 1200),
                          child: buildHadithCard(
                            index,
                            hadith,
                          ),
                        );
                }),
          ),
        );
      },
    );
  }
}
