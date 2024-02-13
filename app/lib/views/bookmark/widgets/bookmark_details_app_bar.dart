import 'package:app/utils/asset_manager.dart';
import 'package:app/views/bookmark/cubit/bookmark_cubit.dart';
import 'package:app/views/bookmark/functions/show_clear_all_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BookmarkDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookmarkDetailsAppBar({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(type),
      elevation: 0,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Image.asset(ImageAssets.backArrowIcon),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            showClearAllConfirmationDialog(
                context, context.read<BookmarkCubit>());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}
