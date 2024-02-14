// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/functions/show_clear_item_confirmation_dialog.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/home/widgets/surah_header_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkCard extends StatelessWidget {
  final BookmarkModel model;
  final int index;

  const BookmarkCard({
    Key? key,
    required this.model,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(model.text),
      onDismissed: (direction) async {
        await context.read<BookmarkCubit>().deleteBookmarkByText(model.text);
        await context.read<BookmarkCubit>().getBookmarks();
      },
      confirmDismiss: (DismissDirection direction) async {
        return await showClearItemConfirmationDialog(context);
      },
      background: Container(
        decoration: Styles.decorationDismissibleCard,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Column(
        children: [
          SurahHeaderIcons(
            index: index,
            hasAudio: (model.type == "hadith") ? false : true,
            bookmarkModel: BookmarkModel(
              text: model.text,
              type: model.type,
              audio: model.audio,
            ),
          ),
          const SizedBox(height: 24),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                model.text,
                style: Styles.ayetArTextStyle(context),
              ),
            ),
          ),
          const SizedBox(height: 24),
          buildCustomDivider(),
        ],
      ),
    );
  }
}
// app/assets/audios/quran_audio/001/001.mp3