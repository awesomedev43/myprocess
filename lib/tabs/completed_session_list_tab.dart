import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/util.dart';
import 'package:share_plus/share_plus.dart';

import '../model/providers.dart';

class CompletedSessionListTab extends ConsumerStatefulWidget {
  const CompletedSessionListTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedSessionListWidgetState();
}

class _CompletedSessionListWidgetState
    extends ConsumerState<CompletedSessionListTab> {
  @override
  Widget build(BuildContext context) {
    final completedSession =
        ref.watch(getCompletedSessionListProvider).value ?? [];
    return ListView(children: [
      ...completedSession
          .map((instance) => CompletedSessionCard(sessionInstance: instance))
          .toList(),
      const Padding(padding: EdgeInsets.only(bottom: 80))
    ]);
  }
}

class CompletedSessionCard extends ConsumerStatefulWidget {
  const CompletedSessionCard({super.key, required this.sessionInstance});

  final SessionInstance sessionInstance;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedSessionCardState();
}

class _CompletedSessionCardState extends ConsumerState<CompletedSessionCard> {
  final DateFormat formatter = DateFormat('h:mm:ss a, MMMM d yyyy');

  @override
  Widget build(BuildContext context) {
    final allCompleted =
        widget.sessionInstance.taskInstances.every((t) => t.completed);
    final duration = widget.sessionInstance.end
        ?.difference(widget.sessionInstance.start ?? DateTime.now())
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
              title: Text(widget.sessionInstance.session.name),
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
                      .format(widget.sessionInstance.start ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.stop,
                    color: Colors.red,
                  ),
                  title: Text(formatter
                      .format(widget.sessionInstance.end ?? DateTime.now())),
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
                                Share.share(
                                    "Session completed: ${widget.sessionInstance.session.name}",
                                    subject: "Session completed at ${widget.sessionInstance.end.toString()}");
                              },
                              icon: const Icon(
                                Icons.share,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, "/completedsessioninfo",
                                    arguments: widget.sessionInstance);
                              },
                              icon: const Icon(
                                Icons.info,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {
                                ref
                                    .read(sessionInstanceListNotifierProvider
                                        .notifier)
                                    .remove(widget.sessionInstance);
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
