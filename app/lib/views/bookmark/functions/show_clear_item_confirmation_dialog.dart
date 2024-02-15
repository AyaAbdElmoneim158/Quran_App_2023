import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';

Future<bool?> showClearItemConfirmationDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Confirm",
          style: Styles.splashAppNameTextStyle(context),
        ),
        content: Text(
          "Are you sure you wish to delete this item?",
          style: Styles.splashDecTextStyle(context),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("Confirm")),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("Cancel"),
          ),
        ],
      );
    },
  );
}
