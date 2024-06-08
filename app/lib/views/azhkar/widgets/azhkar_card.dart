import 'package:app/utils/app_color.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/azhkar/model/azhkar_model.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BuildGeneralCard buildAzhkarCard(int index, AzhkarModel azhkar) {
  return BuildGeneralCard(
      height: 250.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                azhkar.array[index].text,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: Styles.hadithDetailsTextStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /*Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      AudioplayersHelper.play(path: azhkar.array[index].audio);
                    },
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.kPurpleD2Color,
                      child: Icon(
                        Icons.play_arrow,
                        color: AppColors.kWitheColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: Constance.padding16),*/
                BlocBuilder<BookmarkCubit, BookmarkState>(
                  builder: (context, state) {
                    var cubit = BookmarkCubit.get(context);

                    return Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // AudioplayersHelper.play(path: azhkar.array[index].audio);
                          debugPrint("Add Hadith to Bookmark");

                          cubit.addBookmark(
                            BookmarkModel(
                              text: azhkar.array[index].text,
                              type: 'zhkar',
                              audio: azhkar.array[index].audio,
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: AppColors.kWitheColor,
                          child: cubit.isBookmarked(azhkar.array[index].text)
                              ? Image.asset(ImageAssets.bookmarkFillIcon)
                              : Image.asset(ImageAssets.bookmarkOutlineIcon),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ));
}
