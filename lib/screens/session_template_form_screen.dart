import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:uuid/uuid.dart';

class SessionTemplateFormScreen extends StatefulHookConsumerWidget {
  const SessionTemplateFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SessionTemplateFormState();
}

class _SessionTemplateFormState
    extends ConsumerState<SessionTemplateFormScreen> {
  final nameController = TextEditingController();
  final taskController = TextEditingController();
  late Session? editingProcess;
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
    editingProcess = ModalRoute.of(context)!.settings.arguments as Session?;
    final tasks = useState<List<Task>>(editingProcess?.tasks ?? []);
    final counterTasks =
        useState<List<CounterTask>>(editingProcess?.counters ?? []);

    if (!initialized) {
      nameController.text = editingProcess?.name ?? nameController.text;
      initialized = true;
    }

    todoDeleteFunction(taskToDelete) {
      setState(() {
        tasks.value = [
          for (final t in tasks.value)
            if (t.id != taskToDelete.id) t
        ];
      });
    }

    todoEditFunction(taskToEdit) async {
      final editedTask =
          await Navigator.pushNamed(context, "/addtask", arguments: taskToEdit)
              as Task?;

      if (editedTask == null) {
        return;
      }

      setState(() {
        tasks.value = [
          for (final t in tasks.value)
            if (t.id != editedTask.id) t else editedTask
        ];
      });
    }

    counterDeleteFunction(counterToDelete) {
      setState(() {
        counterTasks.value = [
          for (final t in counterTasks.value)
            if (t.id != counterToDelete.id) t
        ];
      });
    }

    counterEditFunction(counterToEdit) async {
      final editedCounter = await Navigator.pushNamed(context, "/addtask",
          arguments: counterToEdit) as CounterTask?;

      if (editedCounter == null) {
        return;
      }

      setState(() {
        counterTasks.value = [
          for (final t in counterTasks.value)
            if (t.id != editedCounter.id) t else editedCounter
        ];
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Session Template"),
        actions: [
          IconButton(
              onPressed: () {
                final session = Session(
                    id: editingProcess?.id ?? const Uuid().v1(),
                    name: nameController.text,
                    tasks: tasks.value,
                    counters: counterTasks.value);
                Navigator.pop(context, session);
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            WidgetUtils.buildSectionTitle("Properties"),
            Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: 500,
                    child: TextField(
                      maxLength: 40,
                      decoration: const InputDecoration(hintText: "Name"),
                      controller: nameController,
                    ))),
            if (tasks.value.isNotEmpty) ...[
              WidgetUtils.buildSectionTitle("Tasks"),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              TodoTaskListWidget(
                tasks: tasks.value,
                deleteTask: todoDeleteFunction,
                editTask: todoEditFunction,
              )
            ],
            if (counterTasks.value.isNotEmpty) ...[
              WidgetUtils.buildSectionTitle("Counters"),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              CounterTaskListWidget(
                tasks: counterTasks.value,
                deleteTask: counterDeleteFunction,
                editTask: counterEditFunction,
              )
            ],
            const Padding(padding: EdgeInsets.only(bottom: 60))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final task = await Navigator.pushNamed(context, "/addtask");
          if (task is Task) {
            tasks.value = [...tasks.value, task];
          }
          if (task is CounterTask) {
            counterTasks.value = [...counterTasks.value, task];
          }
        },
        tooltip: "Add Task",
        icon: const Icon(Icons.add),
        label: const Text("Add Task"),
      ),
    );
  }
}

class TodoTaskListWidget extends StatelessWidget {
  const TodoTaskListWidget(
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

class CounterTaskListWidget extends StatelessWidget {
  const CounterTaskListWidget(
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
