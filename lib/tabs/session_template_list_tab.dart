import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'tabs.dart';
import '../model/model.dart';
import '../model/providers.dart';

class SessionTemplateListTab extends ConsumerStatefulWidget {
  const SessionTemplateListTab({super.key, required this.controller});

  final TabController controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SessionTemplateListWidgetState();
}

class _SessionTemplateListWidgetState
    extends ConsumerState<SessionTemplateListTab> {
  IconButton createInfoButton(BuildContext context, Session session) {
    return IconButton(
        onPressed: () {
          _dialogBuilder(context, session);
        },
        icon: const Icon(
          Icons.info,
          color: Colors.lightBlue,
        ));
  }

  IconButton createStatsButton(BuildContext context, Session session) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, "/sessionstats", arguments: session);
        },
        icon: const Icon(
          Icons.show_chart,
          color: Colors.blue,
        ));
  }

  IconButton createPlayButton(Session session) {
    return IconButton(
        onPressed: () {
          ref.read(sessionInstanceListNotifierProvider.notifier).add(session);
          widget.controller.index = SessionTab.inprogress.index;
        },
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.green,
        ));
  }

  IconButton createEditButton(BuildContext context, Session session) {
    return IconButton(
        onPressed: () async {
          final modifiedSession = await Navigator.pushNamed(
              context, "/addsession",
              arguments: session);
          if (modifiedSession != null) {
            ref
                .read(sessionTemplateListNotifierProvider.notifier)
                .add(modifiedSession as Session);
          }
        },
        icon: const Icon(
          Icons.edit,
          color: Colors.black,
        ));
  }

  IconButton createRemoveButton(Session session) {
    return IconButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Delete Session'),
              content: const Text(
                  'Are you sure you want to delete the session and its associated data?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    ref
                        .read(sessionTemplateListNotifierProvider.notifier)
                        .remove(session);
                    Navigator.pop(context, 'Cancel');
                  },
                  child: const Text('OK'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          );
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final templateList =
        ref.watch(sessionTemplateListNotifierProvider).value ?? [];
    final cards = templateList.map((session) {
      return Card(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.checklist),
              title: Text(session.name),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  createInfoButton(context, session),
                  createStatsButton(context, session),
                  createRemoveButton(session),
                  createEditButton(context, session),
                  createPlayButton(session),
                ],
              ),
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: cards,
    );
  }

  Future<void> _dialogBuilder(BuildContext context, Session session) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SessionTemplateInfoDialog(session: session);
      },
    );
  }
}

class SessionTemplateInfoDialog extends StatelessWidget {
  const SessionTemplateInfoDialog({super.key, required this.session});

  final Session session;

  @override
  Widget build(BuildContext context) {
    final taskWidget = session.tasks.map((e) {
      return ListTile(
        dense: true,
        title: Text(e.title),
        leading: const Icon(Icons.check_box_outline_blank),
      );
    }).toList();

    taskWidget.addAll(session.counters.map((e) {
      return ListTile(
          dense: true,
          title: Text("${e.title} (Increment: ${e.increment})"),
          leading: const Icon(Icons.arrow_upward));
    }));

    return SimpleDialog(
      title: Text(session.name),
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
