import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';

class InProgressProcessListWidget extends ConsumerStatefulWidget {
  const InProgressProcessListWidget({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InProgressProcessListWidgetState();
}

class _InProgressProcessListWidgetState
    extends ConsumerState<InProgressProcessListWidget> {
  @override
  Widget build(BuildContext context) {
    final inProgressProcesses = ref.watch(inProgressProcessListProvider);
    return ListView(
        children: inProgressProcesses
            .map((instance) => InProgressProcessCard(processInstance: instance))
            .toList());
  }
}

class InProgressProcessCard extends StatefulWidget {
  const InProgressProcessCard({super.key, required this.processInstance});

  final ProcessInstance processInstance;

  @override
  State<InProgressProcessCard> createState() => _InProgressProcessCardState();
}

class _InProgressProcessCardState extends State<InProgressProcessCard> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.checklist),
              title: Text(widget.processInstance.process.name),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Text(widget.processInstance.process.tasks[index].description),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (index - 1 >= 0) {
                        index--;
                      }
                    });
                  },
                  icon: const Icon(Icons.skip_previous),
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (index + 1 <
                          widget.processInstance.process.tasks.length) {
                        index++;
                      }
                    });
                  },
                  icon: const Icon(Icons.skip_next),
                  color: Colors.blue,
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.stop),
                  color: Colors.red,
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
