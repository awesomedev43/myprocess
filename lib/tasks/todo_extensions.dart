import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/task_util.dart';
import 'package:myprocess/tasks/todo_template_form_task_list_widget.dart';
import 'package:myprocess/widgets/util.dart';

extension CompletenessExtensions on List<TaskInstance> {
  bool completed() {
    return every((element) => element.completed);
  }
}

extension InstanceWidgetExtensions on List<TaskInstance> {
  Future<bool> showDialogIfIncomplete(BuildContext context) async {
    if (completed()) {
      return true;
    }
    return TaskUtil.showDialogIfIncomplete(
        context, "Not all tasks are completed");
  }

  List<Widget> completedScreenWidgets() {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Tasks"),
      const Padding(padding: EdgeInsets.all(1)),
      ...map(
        (instance) {
          final finishedIcon =
              instance.completed ? Icons.check_circle : Icons.cancel;
          final finishedColor = instance.completed ? Colors.green : Colors.red;
          return Card(
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(finishedIcon, color: finishedColor),
                      const Padding(padding: EdgeInsets.all(10.0)),
                      Text(instance.title),
                    ],
                  ),
                  if (instance.photoVerificationPath != null) ...[
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.black, // Set border color
                                width: 1.0)),
                        child: SizedBox(
                            width: 200.0,
                            child: Image.file(
                                File(instance.photoVerificationPath!))),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          );
        },
      ),
    ];
  }
}

extension WidgetExtensions on List<Task> {
  List<ListTile> getInfoTiles() {
    return map((e) {
      return ListTile(
        dense: true,
        title: Text(e.title),
        leading: const Icon(Icons.check_box_outline_blank),
      );
    }).toList();
  }

  List<Widget> getTemplateFormWidget(
      {required Function editTask, required Function deleteTask}) {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Tasks"),
      const Padding(padding: EdgeInsets.only(bottom: 10.0)),
      TodoTemplateFormTaskListWidget(
        tasks: this,
        deleteTask: deleteTask,
        editTask: editTask,
      )
    ];
  }
}
