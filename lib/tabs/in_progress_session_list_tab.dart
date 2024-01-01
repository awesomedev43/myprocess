import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/util.dart';

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
    final inProgressSessions = ref.watch(inProgressSessionListProvider);
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
        height: 100,
      )
    ]);
  }
}

class InProgressSessionCard extends StatefulWidget {
  const InProgressSessionCard(
      {super.key,
      required this.sessionInstance,
      required this.ref,
      required this.tabController});

  final SessionInstance sessionInstance;
  final WidgetRef ref;
  final TabController tabController;

  @override
  State<InProgressSessionCard> createState() => _InProgressSessionCardState();
}

class _InProgressSessionCardState extends State<InProgressSessionCard> {
  int timeElapsed = 0;
  // int _index = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeElapsed = DateTime.now()
            .difference(widget.sessionInstance.start ?? DateTime.now())
            .inSeconds;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void completeTask() {
    widget.ref
        .read(sessionInstanceListProvider.notifier)
        .completed(widget.sessionInstance);
    widget.tabController.index = SessionTab.completed.index;
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
                    completeTask();
                    Navigator.pop(context);
                  },
                  child: const Text("Proceed"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final taskInstances =
        widget.ref.watch(inProgressTaskListProvider(widget.sessionInstance.id));

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
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Icon(Icons.timer_outlined),
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(TimeUtil.formatTime(timeElapsed)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  tooltip: "Complete Session",
                  onPressed: () {
                    if (taskInstances
                        .any((element) => element.completed != true)) {
                      displayIncompleteTasksAlert(context);
                    } else {
                      completeTask();
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
