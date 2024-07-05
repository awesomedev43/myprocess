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
          ,
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
  void onSharePress() {
    final images = widget.sessionInstance.taskInstances
        .map((instance) {
          return instance.photoVerificationPath;
        })
        .whereType<String>()
        .toList()
        .map((p) => XFile(p))
        .toList();

    final sessionName = widget.sessionInstance.session.name;
    final endTime = TimeUtil.formatDateTime(widget.sessionInstance.end!);
    var subject = "Session $sessionName completed at $endTime";

    if (images.isNotEmpty) {
      Share.shareXFiles(images,
          text: StringUtil.format(widget.sessionInstance), subject: subject);
    } else {
      Share.share(StringUtil.format(widget.sessionInstance), subject: subject);
    }
  }

  void onPdfShare() async {
    final sessionName = widget.sessionInstance.session.name;
    final DateFormat formatter = DateFormat('MMMM_d_yyyy');
    final endTime = formatter.format(widget.sessionInstance.end!);
    var subject = "${sessionName}_$endTime";

    final file = await PdfUtil.createPdfForInstance(widget.sessionInstance);

    await Share.shareXFiles([XFile(file.path)],
        text: StringUtil.format(widget.sessionInstance), subject: subject);

    await file.delete();
  }

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
                  title: Text(TimeUtil.formatDateTime(
                      widget.sessionInstance.start ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.stop,
                    color: Colors.red,
                  ),
                  title: Text(TimeUtil.formatDateTime(
                      widget.sessionInstance.end ?? DateTime.now())),
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
                              onPressed: onPdfShare,
                              icon: const Icon(
                                Icons.picture_as_pdf,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: onSharePress,
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
