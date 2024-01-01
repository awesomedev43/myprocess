import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionTaskInputForm extends StatefulHookConsumerWidget {
  const SessionTaskInputForm({super.key});

  @override
  ConsumerState<SessionTaskInputForm> createState() =>
      _SessionTaskInputFormState();
}

class _SessionTaskInputFormState extends ConsumerState<SessionTaskInputForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task for Session'),
      ),
      body: Container(),
    );
  }
}
