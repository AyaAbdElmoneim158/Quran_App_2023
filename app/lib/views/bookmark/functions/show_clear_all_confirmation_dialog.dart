import 'package:flutter/material.dart';

void showClearAllConfirmationDialog(BuildContext context, cubit) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Clear All Bookmarks'),
        content: const Text('Are you sure you want to clear all bookmarks?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              cubit.clearAllBookmarks();
              cubit.getBookmarks();
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Clear All'),
          ),
        ],
      );
    },
  );
}
