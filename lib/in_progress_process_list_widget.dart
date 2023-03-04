import 'dart:async';

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
            .map((instance) =>
                InProgressProcessCard(processInstance: instance, ref: ref))
            .toList());
  }
}

class InProgressProcessCard extends StatefulWidget {
  const InProgressProcessCard(
      {super.key, required this.processInstance, required this.ref});

  final ProcessInstance processInstance;
  final WidgetRef ref;

  @override
  State<InProgressProcessCard> createState() => _InProgressProcessCardState();
}

class _InProgressProcessCardState extends State<InProgressProcessCard> {
  int index = 0;
  int timeElapsed = 0;
  int _index = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    setState(() {
      timeElapsed = DateTime.now()
          .difference(widget.processInstance.start ?? DateTime.now())
          .inSeconds;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeElapsed++;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  List<Step> buildSteps(List<Task> tasks) {
    return tasks.map((task) {
      return Step(title: Text(task.description), content: Container());
    }).toList();
  }

  Stepper buildStepper(ProcessInstance instance) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index + 1 < instance.process.tasks.length) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: buildSteps(instance.process.tasks),
    );
  }

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
            if (widget.processInstance.process.tasks.isNotEmpty)
              buildStepper(widget.processInstance),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Text("Time Elapsed: $timeElapsed s"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    widget.ref
                        .read(inProgressProcessListProvider.notifier)
                        .remove(widget.processInstance);
                    widget.ref
                        .read(completedProcessListProvider.notifier)
                        .add(widget.processInstance);
                  },
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
