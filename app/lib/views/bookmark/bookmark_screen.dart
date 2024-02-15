import 'package:app/utils/app_router.dart';
import 'package:app/utils/app_string.dart';
import 'package:app/utils/asset_manager.dart';
import 'package:app/utils/common_widgets.dart';
import 'package:app/utils/constance.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/model/bookmark_model.dart';
import 'package:app/views/bottom_navbar/cubit/bottom_navbar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkCubit, BookmarkState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BookmarkCubit.get(context);
        var bookmarks = cubit.bookmarks;
        var hadithBookmarks = cubit.hadithBookmarks;
        var surahBookmarks = cubit.surahBookmarks;
        var zhkarBookmarks = cubit.zhkarBookmarks;

        debugPrint("bookmarks Len: ${bookmarks.length}");
        debugPrint("hadithBookmarks Len: ${hadithBookmarks.length}");
        debugPrint("surahBookmarks Len: ${surahBookmarks.length}");
        debugPrint("zhkarBookmarks Len: ${zhkarBookmarks.length}");

        return Scaffold(
            key: context.read<BottomNavbarCubit>().scaffoldKey,
            appBar: AppBar(
              title: Text(
                AppString.appName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              // actions: const [BuildAction()],
              elevation: 0,
              // leading: IconButton(
              //   onPressed: () => context
              //       .read<BottomNavbarCubit>()
              //       .scaffoldKey
              //       .currentState!
              //       .openDrawer(),
              //   icon: Image.asset(ImageAssets.menuIcon),
              // ),
            ),
            drawer: buildCustomDrawer(context),
            body: Padding(
              padding: EdgeInsets.all(Constance.padding16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "surah", "hadith", "zhkar"
                  _buildFolder("Surah", surahBookmarks, context),
                  _buildFolder("Hadith", hadithBookmarks, context),
                  _buildFolder("Zhkar", zhkarBookmarks, context),
                ],
              ),
            ));
      },
    );
  }

  Widget _buildFolder(
    String folderName,
    List<BookmarkModel> bookmarks,
    context,
  ) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.bookmarkDetails, arguments: {"type": folderName});
        debugPrint("Pushing to BookmarkDetailsScreen");
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageAssets.folderIcon,
                height: 24,
              ),
              SizedBox(width: Constance.padding16 / 2),
              Column(
                children: [
                  Text(
                    folderName,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "${bookmarks.length} Items",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Constance.padding16),
        ],
      ),
    );
  }
}
