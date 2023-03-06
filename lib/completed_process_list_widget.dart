import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:intl/intl.dart';

import 'model/providers.dart';

class CompletedProcessListWidget extends ConsumerStatefulWidget {
  const CompletedProcessListWidget({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedProcessListWidgetState();
}

class _CompletedProcessListWidgetState
    extends ConsumerState<CompletedProcessListWidget> {
  @override
  Widget build(BuildContext context) {
    final completedProcesses = ref.watch(completedProcessListProvider);
    return ListView(
        children: completedProcesses
            .map((instance) => CompletedProcessCard(processInstance: instance))
            .toList());
  }
}

class CompletedProcessCard extends StatefulWidget {
  const CompletedProcessCard({super.key, required this.processInstance});

  final ProcessInstance processInstance;

  @override
  State<CompletedProcessCard> createState() => _CompletedProcessCardState();
}

class _CompletedProcessCardState extends State<CompletedProcessCard> {
  final DateFormat formatter = DateFormat('h:mm:ss a, MMMM 4 yyyy');

  @override
  Widget build(BuildContext context) {
    final duration = widget.processInstance.end
        ?.difference(widget.processInstance.start ?? DateTime.now())
        .inSeconds;
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              title: Text(widget.processInstance.process.name),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: ListView(primary: false, shrinkWrap: true, children: [
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.play_arrow,
                    color: Colors.green,
                  ),
                  title: Html(
                      data: formatter.format(
                          widget.processInstance.start ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.stop,
                    color: Colors.red,
                  ),
                  title: Html(
                      data: formatter.format(
                          widget.processInstance.end ?? DateTime.now())),
                ),
                ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.timer_sharp,
                    color: Colors.black,
                  ),
                  title: Text("$duration s"),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
