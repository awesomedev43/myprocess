import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/tabs.dart';

import 'model/model.dart';
import 'model/providers.dart';

class ProcessTemplateListWidget extends ConsumerStatefulWidget {
  const ProcessTemplateListWidget({super.key, required this.controller});

  final TabController controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProcessTemplateListWidgetState();
}

class _ProcessTemplateListWidgetState
    extends ConsumerState<ProcessTemplateListWidget> {
  IconButton createInfoButton(BuildContext context, Process process) {
    return IconButton(
        onPressed: () {
          _dialogBuilder(context, process);
        },
        icon: const Icon(
          Icons.info,
          color: Colors.lightBlue,
        ));
  }

  IconButton createPlayButton(Process process) {
    return IconButton(
        onPressed: () {
          ref.read(inProgressProcessListProvider.notifier).add(process);
          widget.controller.index = ProcessTab.inprogress.index;
        },
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.green,
        ));
  }

  IconButton createEditButton(BuildContext context, Process process) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addprocess", arguments: process);
        },
        icon: const Icon(
          Icons.edit,
          color: Colors.black,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final templateList = ref.watch(processTemplateListProvider);
    final cards = templateList.map((process) {
      return Card(
        child: ListTile(
          leading: const Icon(Icons.checklist),
          title: Text(process.name),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              createInfoButton(context, process),
              createEditButton(context, process),
              createPlayButton(process)
            ],
          ),
        ),
      );
    }).toList();

    return ListView(
      children: cards,
    );
  }

  Future<void> _dialogBuilder(BuildContext context, Process process) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return ProcessTemplateInfoDialog(process: process);
      },
    );
  }
}

class ProcessTemplateInfoDialog extends StatelessWidget {
  const ProcessTemplateInfoDialog({super.key, required this.process});

  final Process process;

  @override
  Widget build(BuildContext context) {
    final taskWidget = process.tasks.map((e) {
      return ListTile(
        dense: true,
        title: Text(e.description),
        leading: const Icon(Icons.check),
      );
    }).toList();

    return SimpleDialog(
      title: Text(process.name),
      children: [
        ...taskWidget,
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Done")),
          ),
        ])
      ],
    );
  }
}
