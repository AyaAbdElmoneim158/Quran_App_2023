import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return (context.watch<HomeCubit>().isSearch)
        ? TextField(
            controller: context.read<HomeCubit>().searchedTextEditingController,
            onChanged: (searchedChar) {
              context.read<HomeCubit>().runFilter(searchedChar);
            },
            cursorColor: AppColors.kTextMediumColor,
            style: TextStyle(
              color: AppColors.kTextMediumColor,
              fontSize: 14.sp,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: AppString.searchHere,
              helperStyle: TextStyle(color: AppColors.kTextLight2Color),
            ),
          )
        : Text(
            AppString.appName,
            style: Theme.of(context).textTheme.titleMedium,
          );
  }
}
