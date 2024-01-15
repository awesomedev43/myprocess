import 'package:flutter/material.dart';

class TaskUtil {
  static Future<bool> showDialogIfIncomplete(
      BuildContext context, String notificationText) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(notificationText),
            actions: [
              TextButton(
                  onPressed: () => {Navigator.of(context).pop(false)},
                  child: const Text("Remain")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text("Proceed"))
            ],
          );
        });
  }
}
