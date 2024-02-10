import 'package:app/utils/app_color.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildAction extends StatelessWidget {
  const BuildAction({super.key});

  @override
  Widget build(BuildContext context) {
    return (context.watch<HomeCubit>().isSearch)
        ? IconButton(
            onPressed: () {
              context.read<HomeCubit>().clearSearched();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear,
              color: AppColors.kTextMediumColor,
            ),
          )
        : IconButton(
            onPressed: () {
              context.read<HomeCubit>().startSearched(context);
            },
            icon: const Icon(
              Icons.search,
              color: AppColors.kTextMediumColor,
            ),
          );
  }
}
