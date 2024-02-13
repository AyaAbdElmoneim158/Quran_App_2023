import 'package:animate_do/animate_do.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/constance.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/bookmark/widgets/bookmark_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkDetailsListView extends StatelessWidget {
  const BookmarkDetailsListView({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkCubit, BookmarkState>(
      builder: (context, state) {
        var cubit = BookmarkCubit.get(context);
        debugPrint("Type: $type");
        List<BookmarkModel> bookmarks = (type == "Surah")
            ? cubit.surahBookmarks
            : (type == "Hadith")
                ? cubit.hadithBookmarks
                : cubit.zhkarBookmarks;
        return Padding(
          padding: EdgeInsets.all(Constance.padding16),
          child: bookmarks.isEmpty
              ? buildEmptyList(context)
              : ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: bookmarks.length,
                  itemBuilder: (context, index) {
                    final bookmark = bookmarks[index];
                    return (index % 2 == 0)
//Todo: Out How -----------------------------------------------------------------------------------------------
                        ? FadeInLeftBig(
                            duration: const Duration(milliseconds: 1200),
                            child: BookmarkCard(
                              model: bookmark,
                              index: index,
                            ),
                          )
                        : FadeInRightBig(
                            duration: const Duration(milliseconds: 1200),
                            child: BookmarkCard(
                              model: bookmark,
                              index: index,
                            ),
                          );
                  },
                ),
        );
      },
    );
  }
}
