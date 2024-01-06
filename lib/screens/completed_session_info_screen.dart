import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';
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
            if (processInstance.taskInstances.isNotEmpty) ...[
              WidgetUtils.buildSectionTitle("Tasks"),
              const Padding(padding: EdgeInsets.all(1)),
              ...processInstance.taskInstances.map(
                (instance) {
                  final finishedIcon =
                      instance.completed ? Icons.check_circle : Icons.cancel;
                  final finishedColor =
                      instance.completed ? Colors.green : Colors.red;
                  return Card(
                    child: ListTile(
                      // leading: Icon(finishedIcon, color: finishedColor),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(finishedIcon, color: finishedColor),
                              const Padding(padding: EdgeInsets.all(10.0)),
                              Text(instance.title),
                            ],
                          ),
                          if (instance.photoVerificationPath != null) ...[
                            const Padding(padding: EdgeInsets.all(5.0)),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Colors.black, // Set border color
                                        width: 1.0)),
                                child: SizedBox(
                                    width: 200.0,
                                    child: Image.file(
                                        File(instance.photoVerificationPath!))),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
            if (processInstance.counterInstances.isNotEmpty) ...[
              WidgetUtils.buildSectionTitle("Counters"),
              ...processInstance.counterInstances.map(
                (instance) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.plus_one),
                      title: Text(
                        instance.title,
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("${instance.count}",
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal)),
                    ),
                  );
                },
              )
            ]
          ],
        ),
      ),
    );
  }
}
