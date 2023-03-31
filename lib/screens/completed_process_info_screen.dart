import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';

import '../util.dart';

class CompletedProcessInfoScreen extends ConsumerWidget {
  CompletedProcessInfoScreen({super.key});

  final DateFormat formatter = DateFormat('h:mm:ss a, MMMM 4 yyyy');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final processInstance =
        ModalRoute.of(context)!.settings.arguments as ProcessInstance;

    final duration = processInstance.end
        ?.difference(processInstance.start ?? DateTime.now())
        .inSeconds;

    return Scaffold(
      appBar: AppBar(
        title: Text(processInstance.process.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
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
            ListTile(
              title: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                    text: 'Tasks ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ...processInstance.taskInstances.map(
              (instance) {
                final finishedIcon =
                    instance.completed ? Icons.check_circle : Icons.cancel;
                final finishedColor =
                    instance.completed ? Colors.green : Colors.red;
                return ListTile(
                  leading: Icon(finishedIcon, color: finishedColor),
                  title: Text(instance.title),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
