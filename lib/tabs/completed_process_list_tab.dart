import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:intl/intl.dart';
import 'package:myprocess/util.dart';

import '../model/providers.dart';

class CompletedProcessListTab extends ConsumerStatefulWidget {
  const CompletedProcessListTab({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedProcessListWidgetState();
}

class _CompletedProcessListWidgetState
    extends ConsumerState<CompletedProcessListTab> {
  @override
  Widget build(BuildContext context) {
    final completedProcesses = ref.watch(completedProcessListProvider);
    return ListView(
        children: completedProcesses
            .map((instance) => CompletedProcessCard(processInstance: instance))
            .toList());
  }
}

class CompletedProcessCard extends ConsumerStatefulWidget {
  const CompletedProcessCard({super.key, required this.processInstance});

  final ProcessInstance processInstance;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedProcessCardState();
}

class _CompletedProcessCardState extends ConsumerState<CompletedProcessCard> {
  final DateFormat formatter = DateFormat('h:mm:ss a, MMMM 4 yyyy');

  @override
  Widget build(BuildContext context) {
    final allCompleted =
        widget.processInstance.taskInstances.every((t) => t.completed);
    final duration = widget.processInstance.end
        ?.difference(widget.processInstance.start ?? DateTime.now())
        .inSeconds;
    final finishedIcon = allCompleted ? Icons.check_circle : Icons.cancel;
    final finishedColor = allCompleted ? Colors.green : Colors.red;
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(
                finishedIcon,
                color: finishedColor,
              ),
              title: Text(widget.processInstance.process.name),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView(primary: false, shrinkWrap: true, children: [
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.play_arrow,
                    color: Colors.green,
                  ),
                  title: Text(formatter
                      .format(widget.processInstance.start ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.stop,
                    color: Colors.red,
                  ),
                  title: Text(formatter
                      .format(widget.processInstance.end ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.timer_sharp,
                    color: Colors.black,
                  ),
                  title: Text(TimeUtil.formatTime(duration ?? 0)),
                ),
              ]),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, "/completedprocessinfo",
                                    arguments: widget.processInstance);
                              },
                              icon: const Icon(
                                Icons.info,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {
                                ref
                                    .read(completedProcessListProvider.notifier)
                                    .remove(widget.processInstance);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
