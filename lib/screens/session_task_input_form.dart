import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:uuid/uuid.dart';

enum TaskType {
  todo(name: "Todo"),
  counter(name: "Counter");

  const TaskType({required this.name});

  final String name;
}

class SessionTaskInputForm extends StatefulHookConsumerWidget {
  const SessionTaskInputForm({super.key});

  @override
  ConsumerState<SessionTaskInputForm> createState() =>
      _SessionTaskInputFormState();
}

class _SessionTaskInputFormState extends ConsumerState<SessionTaskInputForm> {
  late dynamic _taskType;
  final _formKey = GlobalKey<FormState>();
  late ValueNotifier<bool?> _photoVerifyTask;
  late String taskId;
  final _titleTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  final _incrementController = TextEditingController();

  void onAddTaskPress() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    if (_taskType.value == TaskType.todo) {
      Navigator.pop(
          context,
          Task(
              id: taskId,
              title: _titleTextController.text.trim(),
              description: _descriptionTextController.text.trim(),
              photoVerify: _photoVerifyTask.value ?? false));
    }
    if (_taskType.value == TaskType.counter) {
      Navigator.pop(
          context,
          CounterTask(
              increment: int.parse(_incrementController.text.trim()),
              id: taskId,
              title: _titleTextController.text.trim(),
              description: _descriptionTextController.text.trim()));
    }
  }

  List<Widget> buildForTaskType() {
    if (_taskType.value == TaskType.todo) {
      return [
        SwitchListTile(
            secondary: const Icon(Icons.check),
            value: _photoVerifyTask.value ?? false,
            title: const Text("Photo Verify Task"),
            onChanged: ((value) {
              _photoVerifyTask.value = value;
            }))
      ];
    } else if (_taskType.value == TaskType.counter) {
      return [
        WidgetUtils.buildCounterIncrementField(
            label: "Increment", controller: _incrementController)
      ];
    }
    return [];
  }

  void setupControllers(Object? incoming) {
    if (incoming is Task) {
      taskId = incoming.id;
      _titleTextController.text = incoming.title;
      _descriptionTextController.text = incoming.description;
      _photoVerifyTask.value ??= incoming.photoVerify ?? false;
    }
    if (incoming is CounterTask) {
      taskId = incoming.id;
      _taskType.value = TaskType.counter;
      _titleTextController.text = incoming.title;
      _descriptionTextController.text = incoming.description;
      _incrementController.text = "${incoming.increment}";
    }
  }

  @override
  Widget build(BuildContext context) {
    final incoming = ModalRoute.of(context)!.settings.arguments;
    bool editing = incoming != null;
    taskId = const Uuid().v1();

    _taskType = useState<TaskType?>(TaskType.todo);
    _photoVerifyTask = useState<bool?>(null);

    setupControllers(incoming);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        WidgetUtils.showSaveAlertDialog(
            context: context,
            onSave: onAddTaskPress,
            title: "Save changes to Task?",
            content: "Would you save changes to your Task?");
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Task for Process'),
          actions: [
            IconButton(onPressed: onAddTaskPress, icon: const Icon(Icons.save))
          ],
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (!editing) ...[
                  WidgetUtils.buildSectionTitle("Task Type"),
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  DropdownMenu<TaskType>(
                    initialSelection: TaskType.todo,
                    onSelected: (TaskType? value) {
                      _taskType.value = value;
                    },
                    dropdownMenuEntries: TaskType.values
                        .map<DropdownMenuEntry<TaskType>>((TaskType value) {
                      return DropdownMenuEntry<TaskType>(
                          value: value, label: value.name);
                    }).toList(),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                ],
                WidgetUtils.buildSectionTitle("Properties"),
                WidgetUtils.buildTextField(
                    text: "Title",
                    controller: _titleTextController,
                    validator: WidgetUtils.nullCheckValidator),
                WidgetUtils.buildTextField(
                    text: "Description",
                    controller: _descriptionTextController,
                    validator: WidgetUtils.noOpValidator),
                ...buildForTaskType(),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
