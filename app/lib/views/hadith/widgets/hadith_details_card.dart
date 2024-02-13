import 'package:app/utils/app_color.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/hadith/models/hadith_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BuildGeneralCard buildHadithDetailsCard(int index, Hadith hadith, context) {
  return BuildGeneralCard(
    height: 250.h,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hadith.array[index].hadith,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: Styles.hadithDetailsTextStyle,
          ),
          BlocBuilder<BookmarkCubit, BookmarkState>(
            builder: (context, state) {
              var cubit = BookmarkCubit.get(context);
              return Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () async {
                    debugPrint("Add Hadith to Bookmark");

                    cubit.addBookmark(
                      BookmarkModel(
                        text: hadith.array[index].hadith,
                        type: 'hadith',
                        audio: '',
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: AppColors.kWitheColor,
                    child: cubit.isBookmarked(hadith.array[index].hadith)
                        ? Image.asset(ImageAssets.bookmarkFillIcon)
                        : Image.asset(ImageAssets.bookmarkOutlineIcon),
                  ),
                ),
              );
            },
          )
        ],
      ),
    ),
  );
}
