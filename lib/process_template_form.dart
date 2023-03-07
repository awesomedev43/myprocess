import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/model/model.dart';
import 'package:uuid/uuid.dart';

import 'add_task_dialog.dart';
import 'model/providers.dart';

class ProcessTemplateForm extends StatefulHookConsumerWidget {
  const ProcessTemplateForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProcessTemplateFormState();
}

class _ProcessTemplateFormState extends ConsumerState<ProcessTemplateForm> {
  final nameController = TextEditingController();
  final taskController = TextEditingController();
  late Process? editingProcess;
  bool initialized = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    editingProcess = ModalRoute.of(context)!.settings.arguments as Process?;
    final tasks = useState<List<Task>>(editingProcess?.tasks ?? []);

    if (!initialized) {
      nameController.text = editingProcess?.name ?? nameController.text;
      initialized = true;
    }

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
                deleteTask: (taskToDelete) {
                  setState(() {
                    tasks.value = [
                      for (final t in tasks.value)
                        if (t.description != taskToDelete.description) t
                    ];
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final process = Process(
              id: editingProcess?.id ?? const Uuid().v1(),
              name: nameController.text,
              tasks: tasks.value);

          ref.read(processTemplateListProvider.notifier).add(process);
          Navigator.pop(context);
        },
        tooltip: "Save",
        child: const Icon(Icons.save_rounded),
      ),
    );
  }

  Future<void> _dialogBuilder(
      BuildContext context, ValueNotifier<List<Task>> tasks) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AddTaskDialog(tasks: tasks);
      },
    );
  }
}

class TaskListWidget extends StatelessWidget {
  const TaskListWidget(
      {super.key, required this.tasks, required this.deleteTask});

  final List<Task> tasks;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
                child: ListTile(
              leading: const Icon(Icons.add_task),
              title: Text(e.description),
              trailing: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.delete),
                onPressed: () => deleteTask(e),
              ),
            )))
        .toList();

    return ListView(
      children: cards,
    );
  }
}
