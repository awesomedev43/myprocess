import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../model/model.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({super.key, required this.tasks});

  final ValueNotifier<List<Task>> tasks;

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return SimpleDialog(
      title: const Text("Add Task for Process"),
      children: [
        Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 25.0)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 200,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.trim().isEmpty) {
                                  return 'Please enter a valid task name';
                                }
                                return null;
                              },
                              maxLength: 100,
                              decoration: const InputDecoration(
                                  hintText: "Description"),
                              controller: descriptionController,
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
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        widget.tasks.value = [
                          ...widget.tasks.value,
                          Task(
                              id: const Uuid().v1(),
                              title: descriptionController.text.trim(),
                              description: descriptionController.text.trim())
                        ];
                        descriptionController.clear();
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                      child: const Text('Cancel'),
                      onPressed: () {
                        descriptionController.clear();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
