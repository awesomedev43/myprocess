import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/counter_extensions.dart';
import 'package:myprocess/tasks/todo_extensions.dart';
import 'package:myprocess/widgets/util.dart';

import '../util.dart';

class CompletedSessionInfoScreen extends ConsumerWidget {
  CompletedSessionInfoScreen({super.key});

  final DateFormat formatter = DateFormat('h:mm:ss a, MMMM d yyyy');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final processInstance =
        ModalRoute.of(context)!.settings.arguments as SessionInstance;

    final duration = processInstance.end
        ?.difference(processInstance.start ?? DateTime.now())
        .inSeconds;

    return Scaffold(
      appBar: AppBar(
        title: Text(processInstance.session.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            WidgetUtils.buildSectionTitle("Summary"),
            ListTile(
              title: Text(
                  formatter.format(processInstance.start ?? DateTime.now())),
              leading: const Icon(
                Icons.play_arrow,
                color: Colors.green,
              ),
            ),
            ListTile(
              title:
                  Text(formatter.format(processInstance.end ?? DateTime.now())),
              leading: const Icon(
                Icons.stop,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.timer_sharp,
                color: Colors.black,
              ),
              title: Text(TimeUtil.formatTime(duration ?? 0)),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ...processInstance.taskInstances.completedScreenWidgets(),
            ...processInstance.counterInstances.completedScreenWidgets(),
          ],
        ),
      ),
    );
  }
}
