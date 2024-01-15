import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';

class CounterTemplateFormTaskListWidget extends StatelessWidget {
  const CounterTemplateFormTaskListWidget(
      {super.key,
      required this.tasks,
      required this.deleteTask,
      required this.editTask});

  final List<CounterTask> tasks;
  final Function deleteTask;
  final Function editTask;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
                child: ListTile(
              leading: const Icon(Icons.plus_one),
              title: Text("${e.title} (Increment: ${e.increment})"),
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
        children: [
          ...cards,
        ],
      ),
    );
  }
}
