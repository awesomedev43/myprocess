import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  final titleTextController = TextEditingController();

  Widget buildSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 10.0, top: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

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
                  Navigator.pop(context);
                }
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Center(
            child: Column(
          children: [
            buildSectionTitle("Task Type"),
            Column(
              children: [
                buildRadioTile(TaskType.todo, "Todo"),
                buildRadioTile(TaskType.counter, "Counter")
              ],
            ),
            buildSectionTitle("Properties"),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 30.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid title';
                  }
                  return null;
                },
                controller: titleTextController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
            ),
            if (_taskType.value == TaskType.counter) ...[],
            if (_taskType.value == TaskType.todo) ...[],
          ],
        )),
      ),
    );
  }
}
