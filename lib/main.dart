import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/process_template_form.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'MyProcess',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainScreen(),
          '/addprocess': (context) => const ProcessTemplateForm(),
        },
      ),
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
            tooltip: "Add New Process Template",
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
