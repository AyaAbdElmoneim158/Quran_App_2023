import 'package:app/views/azhkar/cubit/azhkar_cubit.dart';
import 'package:app/views/azhkar/widgets/azhkar_details_card.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzhkarScreenListView extends StatelessWidget {
  const AzhkarScreenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzhkarCubit, AzhkarState>(
      builder: (context, state) {
        var cubit = AzhkarCubit.get(context);

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: cubit.realAzhkarList.length,
                itemBuilder: (context, index) {
                  var azhkar = cubit.realAzhkarList[index];

                  return (index % 2 == 0)
                      ? FadeInLeftBig(
                          duration: const Duration(milliseconds: 1200),
                          child: buildAzhkarDetailsCard(index, azhkar),
                        )
                      : FadeInRightBig(
                          duration: const Duration(milliseconds: 1200),
                          child: buildAzhkarDetailsCard(index, azhkar),
                        );
                }),
          ),
        );
      },
    );
  }
}
