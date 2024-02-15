import 'package:app/utils/app_color.dart';
import 'package:app/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({
    super.key,
    required this.isSearch,
    required this.controller,
    required this.runFilter,
  });
  final bool isSearch;
  final TextEditingController? controller;
  final void Function(String) runFilter;

  @override
  Widget build(BuildContext context) {
    return (isSearch)
        ? TextField(
            controller: controller,
            onChanged: (searchedChar) {
              runFilter(searchedChar);
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
