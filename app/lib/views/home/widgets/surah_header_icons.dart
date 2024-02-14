import 'dart:async';

import 'package:app/utils/app_color.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/home/cubit/home_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurahHeaderIcons extends StatefulWidget {
  const SurahHeaderIcons({
    super.key,
    required this.index,
    required this.bookmarkModel,
    this.hasAudio = true,
  });

  final int index;
  final BookmarkModel bookmarkModel;
  final bool hasAudio;

  @override
  State<SurahHeaderIcons> createState() => _SurahHeaderIconsState();
}

class _SurahHeaderIconsState extends State<SurahHeaderIcons> {
  bool isPlay = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kbgDark2Color.withOpacity(0.05),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 13.5,
            backgroundColor: AppColors.kPurpleD2Color,
            child: Text(
              "${widget.index + 1}",
              style: Styles.indexTextStyle,
            ),
          ),
          Row(
            children: [
//! Share ----------------------------------------------------------------------------------------------------------------------------
              GestureDetector(
                onTap: () async {
                  debugPrint("Share");
                  context.read<HomeCubit>().shareAyet('ayet');
                },
                child: Image.asset(ImageAssets.shareIcon),
              ),
              const SizedBox(width: 8),
//! Play ----------------------------------------------------------------------------------------------------------------------------
              widget.hasAudio
                  ? GestureDetector(
                      onTap: () async {
                        await context
                            .read<HomeCubit>()
                            .playAudio(path: widget.bookmarkModel.audio);
                        // debugPrint("${context.read<HomeCubit>().isPlay}");
                        isPlay = true;
                        setState(() {});
                        Timer(context.read<HomeCubit>().audioDuration, () {
                          isPlay = false;
                          setState(() {});
                        });
                      },
                      child: isPlay
                          ? Image.asset(ImageAssets.playFillIcon)
                          : Image.asset(ImageAssets.playOutlineIcon),
                    )
                  : const SizedBox(),
              const SizedBox(width: 8),
//! Add ----------------------------------------------------------------------------------------------------------------------------
              GestureDetector(
                onTap: () async {
                  var bookmarkCubit = context.read<BookmarkCubit>();
                  debugPrint("Add");
                  bookmarkCubit.addBookmark(widget.bookmarkModel);
                },
                child: context
                        .watch<BookmarkCubit>()
                        .isBookmarked(widget.bookmarkModel.text)
                    ? Image.asset(ImageAssets.bookmarkFillIcon)
                    : Image.asset(ImageAssets.bookmarkOutlineIcon),
              )
            ],
          ),
        ],
      ),
    );
  }
}
