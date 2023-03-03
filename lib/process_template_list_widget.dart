import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model/model.dart';

class ProcessTemplateListWidget extends ConsumerStatefulWidget {
  const ProcessTemplateListWidget({super.key});
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
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.green,
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
    return SimpleDialog(
      title: Text(process.name),
      // TODO: Add children
    );
  }
}
