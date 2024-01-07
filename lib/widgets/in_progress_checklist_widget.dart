import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/model/providers.dart';
import 'package:myprocess/screens/task_verification_photo_screen.dart';

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
  Future<void> takeVerificationPhotos(
      BuildContext context, TaskInstance t) async {
    if (!Platform.isAndroid || !t.task.photoVerify) {
      return;
    }

    /// Filter out task instances that need verification
    final instancesForVerification =
        List<TaskInstance>.from([t]).where((taskInstance) {
      return taskInstance.task.photoVerify;
    }).toList();

    /// Bring up verification screen only if there are elements in the list
    if (instancesForVerification.isNotEmpty) {
      await Navigator.pushNamed(context, "/taskverificationphoto",
          arguments: TaskVerificationPhotoScreenArgs(
              taskInstances: instancesForVerification,
              sessionInstanceId: widget.sessionInstance.id));
    }
  }

  void onChecklistChange(BuildContext context, bool? value, TaskInstance t) {
    if (value != null && value == true) {
      takeVerificationPhotos(context, t);
    }
    setState(() {
      ref
          .read(sessionInstanceListNotifierProvider.notifier)
          .updateTask(widget.sessionInstance.id, t.id, value ?? false);
    });
  }

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
                onChecklistChange(context, value, t);
              },
            ))
        .toList();
    return Column(children: checkboxes);
  }
}
