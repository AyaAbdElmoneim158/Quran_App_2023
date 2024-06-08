import 'package:flutter/material.dart';

Future<bool?> showClearItemConfirmationDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Confirm",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(
          "Are you sure you wish to delete this item?",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 14),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                "Confirm",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 12),
              )),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              "Cancel",
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
