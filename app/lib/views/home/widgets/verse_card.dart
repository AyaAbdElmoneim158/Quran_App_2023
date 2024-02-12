// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/styles.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/home/model/surah_model.dart';
import 'package:app/views/home/widgets/surah_header_icons.dart';
import 'package:flutter/material.dart';

class VerseCard extends StatelessWidget {
  final SurahModel surah;
  final int index;
  const VerseCard({
    Key? key,
    required this.surah,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SurahHeaderIcons(
            index: index,
            bookmarkModel:
                BookmarkModel(text: "text", type: "type", audio: "audio")),
        const SizedBox(height: 24),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              surah.array[index].ar,
              style: Styles.ayetArTextStyle(context),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            surah.array[index].en,
            style: Styles.ayetEnTextStyle(context),
          ),
        ),
        const SizedBox(height: 24),
        buildCustomDivider(),
      ],
    );
  }
}
