import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:intl/intl.dart';

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
  final DateFormat formatter = DateFormat('yyyy-MM-dd h:mm:ss a');

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
              subtitle: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Html(
                      data:
                          "<b>Start Time</b>: ${formatter.format(widget.processInstance.start ?? DateTime.now())}"),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Html(
                        data:
                            "<b>End Time</b>: ${formatter.format(widget.processInstance.end ?? DateTime.now())}")),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Html(data: "<b>Duration</b>: $duration s"))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
