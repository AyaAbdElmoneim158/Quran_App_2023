import 'package:app/utils/app_color.dart';
import 'package:flutter/material.dart';

class BuildAction extends StatelessWidget {
  const BuildAction({
    super.key,
    required this.isSearch,
    required this.clearSearched,
    required this.startSearched,
  });
  final bool isSearch;
  final void Function() clearSearched;
  final void Function() startSearched;

  @override
  Widget build(BuildContext context) {
    return (isSearch)
        ? IconButton(
            onPressed: () {
              clearSearched;
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear,
              color: AppColors.kTextMediumColor,
            ),
          )
        : IconButton(
            onPressed: startSearched,
            icon: const Icon(
              Icons.search,
              color: AppColors.kTextMediumColor,
            ),
          );
  }
}
