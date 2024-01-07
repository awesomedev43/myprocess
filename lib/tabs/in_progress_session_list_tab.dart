import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/screens/task_verification_photo_screen.dart';
import 'package:myprocess/widgets/animating_timer_widget.dart';
import 'package:myprocess/widgets/in_progress_counter_widget.dart';

import '../widgets/in_progress_checklist_widget.dart';
import '../model/providers.dart';
import 'tabs.dart';

class InProgressSessionListTab extends ConsumerStatefulWidget {
  const InProgressSessionListTab({super.key, required this.tabController});

  final TabController tabController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InProgressSessionListWidgetState();
}

class _InProgressSessionListWidgetState
    extends ConsumerState<InProgressSessionListTab> {
  @override
  Widget build(BuildContext context) {
    final inProgressSessions =
        ref.watch(getInProgressSessionListProvider).value ?? [];
    final children = inProgressSessions
        .map((instance) => InProgressSessionCard(
              sessionInstance: instance,
              ref: ref,
              tabController: widget.tabController,
            ))
        .toList();
    return ListView(children: [
      ...children,
      const SizedBox(
        height: 80,
      )
    ]);
  }
}

class InProgressSessionCard extends StatefulHookConsumerWidget {
  const InProgressSessionCard(
      {super.key,
      required this.sessionInstance,
      required this.ref,
      required this.tabController});

  final SessionInstance sessionInstance;
  final WidgetRef ref;
  final TabController tabController;

  @override
  ConsumerState<InProgressSessionCard> createState() =>
      _InProgressSessionCardState();
}

class _InProgressSessionCardState extends ConsumerState<InProgressSessionCard> {
  int getTimeElapsed() {
    return DateTime.now()
        .difference(widget.sessionInstance.start ?? DateTime.now())
        .inSeconds;
  }

  void completeSession() {
    widget.ref
        .read(sessionInstanceListNotifierProvider.notifier)
        .completed(widget.sessionInstance);
    widget.tabController.index = SessionTab.completed.index;
  }

  Future<void> takeVerificationPhotos(
      BuildContext context, List<TaskInstance> taskInstances) async {
    if (!Platform.isAndroid) {
      return;
    }

    /// Filter out task instances that need verification
    final instancesForVerification = taskInstances.where((taskInstance) {
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

  void displayIncompleteTasksAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Not all tasks are completed"),
            actions: [
              TextButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: const Text("Remain")),
              TextButton(
                  onPressed: () {
                    completeSession();
                    Navigator.pop(context);
                  },
                  child: const Text("Proceed"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final taskInstances = widget.ref
            .watch(getInProgressTaskListProvider(widget.sessionInstance.id))
            .value ??
        [];

    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.checklist),
              title: Text(
                widget.sessionInstance.session.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            if (widget.sessionInstance.session.tasks.isNotEmpty)
              InProgressTaskChecklistWidget(
                sessionInstance: widget.sessionInstance,
              ),
            InProgressCounterWidget(sessionInstance: widget.sessionInstance),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            AnimatingTimerWidget(start: widget.sessionInstance.start),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  tooltip: "Complete Session",
                  onPressed: () async {
                    if (taskInstances
                        .any((element) => element.completed != true)) {
                      if (context.mounted) {
                        displayIncompleteTasksAlert(context);
                      }
                    } else {
                      completeSession();
                    }
                  },
                  iconSize: 30,
                  icon: const Icon(Icons.done_sharp),
                  color: Colors.blue,
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
