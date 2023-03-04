import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/process_template_form.dart';
import 'package:myprocess/process_template_list_widget.dart';

import 'completed_process_list_widget.dart';
import 'in_progress_process_list_widget.dart';
import 'model/model.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'MyProcess',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainApp(),
          '/addprocess': (context) => const ProcessTemplateForm(),
        },
      ),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            text: "Process Template",
          ),
          Tab(
            text: "In Progress",
          ),
          Tab(text: "Completed")
        ]),
        title: const Text("MyProcess"),
      ),
      body: TabBarView(controller: _tabController, children: [
        ProcessTemplateListWidget(controller: _tabController),
        InProgressProcessListWidget(controller: _tabController),
        const CompletedProcessListWidget(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addprocess');
        },
        tooltip: "Add New Process Template",
        child: const Icon(Icons.add),
      ),
    );
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
    final templateList = ref.watch(processTemplateListProvider);
    final cards = templateList
        .map((process) => Card(
              child: ListTile(
                leading: const Icon(Icons.card_travel),
                title: Text(process.name),
              ),
            ))
        .toList();

    return ListView(
      children: cards,
    );
  }
}
