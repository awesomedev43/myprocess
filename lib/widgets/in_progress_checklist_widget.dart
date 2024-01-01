import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/model/providers.dart';

class InProgressTaskChecklistWidget extends ConsumerStatefulWidget {
  const InProgressTaskChecklistWidget(
      {super.key, required this.sessionInstance});

  final SessionInstance sessionInstance;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InProgressTaskChecklistWidgetState();
}

class _InProgressTaskChecklistWidgetState
    extends ConsumerState<InProgressTaskChecklistWidget> {
  @override
  Widget build(BuildContext context) {
    final taskInstances = ref
            .watch(getInProgressTaskListProvider(widget.sessionInstance.id))
            .value ??
        [];
    final checkboxes = taskInstances
        .map((t) => CheckboxListTile(
              title: Text(t.title),
              value: t.completed,
              onChanged: (bool? value) {
                setState(() {
                  ref
                      .read(sessionInstanceListNotifierProvider.notifier)
                      .updateTask(
                          widget.sessionInstance.id, t.task.id, value ?? false);
                });
              },
            ))
        .toList();
    return Column(children: checkboxes);
  }
}
