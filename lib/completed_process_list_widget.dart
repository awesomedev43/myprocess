import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: Text(widget.processInstance.process.name),
              subtitle: Text(
                  "Start Time: ${widget.processInstance.start?.toIso8601String() ?? ""}"),
            ),
          ],
        ),
      ),
    );
  }
}
