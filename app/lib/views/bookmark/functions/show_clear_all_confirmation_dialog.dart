import 'package:flutter/material.dart';

void showClearAllConfirmationDialog(BuildContext context, cubit) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Clear All Bookmarks',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(
          'Are you sure you want to clear all bookmarks?',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 14),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(
              'Cancel',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 12),
            ),
          ),
          TextButton(
            onPressed: () {
              cubit.clearAllBookmarks();
              cubit.getBookmarks();
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(
              'Clear All',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 12),
            ),
          ),
        ],
      );
    },
  );
}
