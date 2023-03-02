import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/model/model.dart';
import 'package:uuid/uuid.dart';

class ProcessTemplateForm extends StatefulHookConsumerWidget {
  const ProcessTemplateForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProcessTemplateFormState();
}

class _ProcessTemplateFormState extends ConsumerState<ProcessTemplateForm> {
  final nameController = TextEditingController();
  final taskController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = useState<List<Task>>([]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Process"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                    text: 'Process Properties ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ),
            const Divider(),
            Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: 500,
                    child: TextField(
                      maxLength: 40,
                      decoration: const InputDecoration(hintText: "Name"),
                      controller: nameController,
                    ))),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      text: 'Process Tasks ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        _dialogBuilder(context, tasks);
                      },
                    )
                  ])),
            ]),
            const Divider(),
            Expanded(
              child: TaskListWidget(
                tasks: tasks.value,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(processTemplateListProvider).add(Process(
              id: const Uuid().v1(),
              name: nameController.text,
              tasks: tasks.value));
          Navigator.pop(context);
        },
        tooltip: "New Process",
        child: const Icon(Icons.save_rounded),
      ),
    );
  }

  Future<void> _dialogBuilder(
      BuildContext context, ValueNotifier<List<Task>> tasks) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('New Process Task'),
          children: <Widget>[
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 25.0)),
                Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                        width: 200,
                        child: TextField(
                          maxLength: 100,
                          decoration:
                              const InputDecoration(hintText: "Description"),
                          controller: taskController,
                        )))
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Add'),
                  onPressed: () {
                    if (taskController.text.trim().isEmpty) {
                      return;
                    }
                    tasks.value = [
                      ...tasks.value,
                      Task(description: taskController.text.trim())
                    ];
                    taskController.clear();
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Cancel'),
                  onPressed: () {
                    taskController.clear();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
            child: ListTile(
                leading: const Icon(Icons.add_task),
                title: Text(e.description))))
        .toList();

    return ListView(
      children: cards,
    );
  }
}
