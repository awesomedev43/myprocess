import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';

class TodoTemplateFormTaskListWidget extends StatelessWidget {
  const TodoTemplateFormTaskListWidget(
      {super.key,
      required this.tasks,
      required this.deleteTask,
      required this.editTask});

  final List<Task> tasks;
  final Function deleteTask;
  final Function editTask;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
                child: ListTile(
              leading: Visibility(
                visible: e.photoVerify ?? false,
                replacement: const Icon(Icons.add_task),
                child: const Icon(Icons.camera_alt),
              ),
              title: Text(e.title),
              subtitle: (e.description.isEmpty) ? null : Text(e.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.edit),
                    onPressed: () => editTask(e),
                  ),
                  IconButton(
                    color: Colors.red,
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteTask(e),
                  ),
                ],
              ),
            )))
        .toList();

    return Expanded(
      child: ListView(
        children: [...cards],
      ),
    );
  }
}
