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

  static Function createDeleteFunction<T extends dynamic>(
      ValueNotifier<List<T>> notifier) {
    return (taskToDelete) {
      notifier.value = [
        for (final t in notifier.value)
          if (t.id != taskToDelete.id) t
      ];
    };
  }

  static Function createEditFunction<T extends dynamic>(
      BuildContext context, ValueNotifier<List<T>> notifier) {
    return (taskToEdit) async {
      final editedTask =
          await Navigator.pushNamed(context, "/addtask", arguments: taskToEdit)
              as T?;

      if (editedTask == null) {
        return;
      }

      notifier.value = [
        for (final t in notifier.value)
          if (t.id != editedTask.id) t else editedTask
      ];
    };
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

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        WidgetUtils.showSaveAlertDialog(
            context: context,
            onSave: () => onSaveSession(tasks, counterTasks),
            title: "Save changes to Session?",
            content: "Would you like to save changes to your Session?");
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
                  editTask: createEditFunction(context, tasks),
                  deleteTask: createDeleteFunction(tasks)),
              ...counterTasks.value.getTemplateFormWidget(
                  editTask: createEditFunction(context, counterTasks),
                  deleteTask: createDeleteFunction(counterTasks)),
              const Padding(padding: EdgeInsets.only(bottom: 60))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            final task = await Navigator.pushNamed(context, "/addtask");
            if (task is Task) {
              tasks.value = [...tasks.value, task];
            } else if (task is CounterTask) {
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
