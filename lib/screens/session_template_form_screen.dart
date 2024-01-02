import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:uuid/uuid.dart';

import '../model/providers.dart';

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

    counterDeleteFunction(counterToDelete) {
      setState(() {
        counterTasks.value = [
          for (final t in counterTasks.value)
            if (t.id != counterToDelete.id) t
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
            WidgetUtils.buildSectionTitle("Session Properties"),
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
              WidgetUtils.buildSectionTitle("Session Todos"),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              TodoTaskListWidget(
                tasks: tasks.value,
                deleteTask: todoDeleteFunction,
              )
            ],
            if (counterTasks.value.isNotEmpty) ...[
              WidgetUtils.buildSectionTitle("Session Counters"),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              CounterTaskListWidget(
                tasks: counterTasks.value,
                deleteTask: counterDeleteFunction,
              )
            ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // _dialogBuilder(context, tasks);
          final task = await Navigator.pushNamed(context, "/addtask");
          if (task is Task) {
            tasks.value = [...tasks.value, task];
          }
          if (task is CounterTask) {
            counterTasks.value = [...counterTasks.value, task];
          }
        },
        tooltip: "Add Task",
        child: const Icon(Icons.add_box_outlined),
      ),
    );
  }
}

class TodoTaskListWidget extends StatelessWidget {
  const TodoTaskListWidget(
      {super.key, required this.tasks, required this.deleteTask});

  final List<Task> tasks;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
                child: ListTile(
              leading: const Icon(Icons.add_task),
              title: Text(e.title),
              trailing: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.delete),
                onPressed: () => deleteTask(e),
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
      {super.key, required this.tasks, required this.deleteTask});

  final List<CounterTask> tasks;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    List<Card> cards = tasks
        .map((e) => Card(
                child: ListTile(
              leading: const Icon(Icons.plus_one),
              title: Text(e.title),
              trailing: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.delete),
                onPressed: () => deleteTask(e),
              ),
            )))
        .toList();

    return Expanded(
      child: ListView(
        children: [
          ...cards,
          const Padding(padding: EdgeInsets.only(bottom: 56))
        ],
      ),
    );
  }
}
