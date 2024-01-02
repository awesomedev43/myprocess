import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:uuid/uuid.dart';

enum TaskType { todo, counter }

class SessionTaskInputForm extends StatefulHookConsumerWidget {
  const SessionTaskInputForm({super.key});

  @override
  ConsumerState<SessionTaskInputForm> createState() =>
      _SessionTaskInputFormState();
}

class _SessionTaskInputFormState extends ConsumerState<SessionTaskInputForm> {
  late dynamic _taskType;
  final _formKey = GlobalKey<FormState>();
  final _titleTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  final _incrementController = TextEditingController();

  /// Build radio tiles for task type
  ListTile buildRadioTile(TaskType taskType, String text) {
    return ListTile(
        title: Text(text),
        leading: Radio<TaskType>(
          value: taskType,
          groupValue: _taskType.value,
          onChanged: (TaskType? value) {
            _taskType.value = value;
          },
        ));
  }

  /// Build text field for title and description
  Widget buildTextField(String text, TextEditingController titleTextController,
      String? Function(String?)? validator) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 30.0),
      child: TextFormField(
        validator: validator,
        controller: titleTextController,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: text,
        ),
      ),
    );
  }

  /// Build numeric increment field for counter type
  Widget buildCounterIncrementField() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 30.0),
      child: TextFormField(
        validator: nullCheckValidator,
        controller: _incrementController,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Increment",
        ),
      ),
    );
  }

  String? nullCheckValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid value';
    }
    return null;
  }

  String? noOpValidator(value) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    _taskType = useState<TaskType?>(TaskType.todo);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task for Session'),
        actions: [
          IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (_taskType.value == TaskType.todo) {
                    Navigator.pop(
                        context,
                        Task(
                            id: const Uuid().v1(),
                            title: _titleTextController.text.trim(),
                            description:
                                _descriptionTextController.text.trim()));
                  }
                  if (_taskType.value == TaskType.counter) {
                    Navigator.pop(
                      context,
                      CounterTask(
                          increment: int.parse(_incrementController.text),
                          id: const Uuid().v1(),
                          title: _titleTextController.text.trim(),
                          description: _descriptionTextController.text.trim()),
                    );
                  }
                }
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Center(
              child: Column(
            children: [
              WidgetUtils.buildSectionTitle("Task Type"),
              Column(
                children: [
                  buildRadioTile(TaskType.todo, "Todo"),
                  buildRadioTile(TaskType.counter, "Counter")
                ],
              ),
              WidgetUtils.buildSectionTitle("Properties"),
              buildTextField("Title", _titleTextController, nullCheckValidator),
              buildTextField(
                  "Description", _descriptionTextController, noOpValidator),
              if (_taskType.value == TaskType.counter) ...[
                buildCounterIncrementField()
              ],
            ],
          )),
        ),
      ),
    );
  }
}
