import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/task_util.dart';
import 'package:myprocess/widgets/util.dart';

extension CompletenessExtensions on List<CounterTaskInstance> {
  bool completed() {
    return isEmpty;
  }
}

extension InstanceWidgetExtensions on List<CounterTaskInstance> {
  Future<bool> showDialogIfIncomplete(BuildContext context) async {
    if (completed()) {
      return true;
    }
    return TaskUtil.showDialogIfIncomplete(
        context, "Are all counter values correctly updated?");
  }

  List<Widget> completedScreenWidgets() {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Counters"),
      ...map(
        (instance) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.plus_one),
              title: Text(
                instance.title,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              trailing: Text("${instance.count}",
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.normal)),
            ),
          );
        },
      )
    ];
  }
}

extension WidgetExtensions on List<CounterTask> {
  List<ListTile> getInfoTiles() {
    return map((e) {
      return ListTile(
          dense: true,
          title: Text("${e.title} (Increment: ${e.increment})"),
          leading: const Icon(Icons.plus_one));
    }).toList();
  }
}
