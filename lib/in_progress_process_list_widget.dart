import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/util.dart';

import 'in_progress_process_checklist_widget.dart';
import 'model/providers.dart';
import 'tabs.dart';

class InProgressProcessListWidget extends ConsumerStatefulWidget {
  const InProgressProcessListWidget({super.key, required this.tabController});

  final TabController tabController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InProgressProcessListWidgetState();
}

class _InProgressProcessListWidgetState
    extends ConsumerState<InProgressProcessListWidget> {
  @override
  Widget build(BuildContext context) {
    final inProgressProcesses = ref.watch(inProgressProcessListProvider);
    final children = inProgressProcesses
        .map((instance) => InProgressProcessCard(
              processInstance: instance,
              ref: ref,
              tabController: widget.tabController,
            ))
        .toList();
    return ListView(children: [
      ...children,
      const SizedBox(
        height: 100,
      )
    ]);
  }
}

class InProgressProcessCard extends StatefulWidget {
  const InProgressProcessCard(
      {super.key,
      required this.processInstance,
      required this.ref,
      required this.tabController});

  final ProcessInstance processInstance;
  final WidgetRef ref;
  final TabController tabController;

  @override
  State<InProgressProcessCard> createState() => _InProgressProcessCardState();
}

class _InProgressProcessCardState extends State<InProgressProcessCard> {
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
      physics: const NeverScrollableScrollPhysics(),
      key: Key(Random.secure().nextDouble().toString()),
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
              InProgressTaskChecklistWidget(
                processInstance: widget.processInstance,
              ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                const Icon(Icons.timer_outlined),
                const Padding(padding: EdgeInsets.only(left: 10)),
                Text(TimeUtil.formatTime(timeElapsed)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  tooltip: "Complete Process",
                  onPressed: () {
                    widget.ref
                        .read(inProgressProcessListProvider.notifier)
                        .remove(widget.processInstance);
                    widget.ref
                        .read(completedProcessListProvider.notifier)
                        .add(widget.processInstance);
                    widget.tabController.index = ProcessTab.completed.index;
                  },
                  iconSize: 30,
                  icon: const Icon(Icons.done_sharp),
                  color: Colors.blue,
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
