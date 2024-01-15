import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/counter_extensions.dart';
import 'package:myprocess/tasks/todo_extensions.dart';
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

  void onSaveSession(ValueNotifier<List<Task>> tasks,
      ValueNotifier<List<CounterTask>> counterTasks) {
    final session = Session(
        id: editingProcess?.id ?? const Uuid().v1(),
        name: nameController.text,
        tasks: tasks.value,
        counters: counterTasks.value);
    Navigator.pop(context, session);
  }

  void _showBackDialog(ValueNotifier<List<Task>> tasks,
      ValueNotifier<List<CounterTask>> counterTasks) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Save changes to Session?'),
          content: const Text(
            'Would you like to save changes to your Session?',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Discard'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Save'),
              onPressed: () {
                Navigator.pop(context);
                onSaveSession(tasks, counterTasks);
              },
            ),
          ],
        );
      },
    );
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

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        _showBackDialog(tasks, counterTasks);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add New Session Template"),
          actions: [
            IconButton(
                onPressed: () => onSaveSession(tasks, counterTasks),
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
              ...tasks.value.getTemplateFormWidget(
                  editTask: todoEditFunction, deleteTask: todoDeleteFunction),
              ...counterTasks.value.getTemplateFormWidget(
                  editTask: counterEditFunction,
                  deleteTask: counterDeleteFunction),
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
      ),
    );
  }
}
