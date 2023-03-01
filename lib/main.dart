import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'MyProcess',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/addprocess': (context) => const ProcessTemplateForm(),
      },
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: "Process Template",
              ),
              Tab(text: "Completed Processes")
            ]),
            title: const Text("MyProcess"),
          ),
          body: const TabBarView(children: [
            ProcessTemplateList(),
            CompletedProcessList(),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addprocess');
            },
            tooltip: "New Process",
            child: const Icon(Icons.add),
          ),
        ));
  }
}

class ProcessTemplateList extends StatefulHookConsumerWidget {
  const ProcessTemplateList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProcessTemplateListState();
}

class _ProcessTemplateListState extends ConsumerState<ProcessTemplateList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.map),
          title: const Text("TODO Add Generation of List"),
          onTap: () {},
        )
      ],
    );
  }
}

class CompletedProcessList extends StatefulHookConsumerWidget {
  const CompletedProcessList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedProcessListState();
}

class _CompletedProcessListState extends ConsumerState<CompletedProcessList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.map),
          title: const Text("TODO Add Generation of this List"),
          onTap: () {},
        )
      ],
    );
  }
}

class ProcessTemplateForm extends StatefulHookConsumerWidget {
  const ProcessTemplateForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProcessTemplateFormState();
}

class _ProcessTemplateFormState extends ConsumerState<ProcessTemplateForm> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Process"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration:
                  const InputDecoration(helperText: "Name", hintText: "Name"),
              controller: nameController,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: "New Process",
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }
}
