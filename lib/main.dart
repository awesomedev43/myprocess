import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/process_template_form.dart';
import 'package:myprocess/process_template_list_widget.dart';
import 'package:myprocess/tabs.dart';

import 'completed_process_list_widget.dart';
import 'in_progress_process_list_widget.dart';
import 'model/providers.dart';

void main() async {
  // Only initilize state at the start
  WidgetsFlutterBinding.ensureInitialized();
  final container = await initializeState();

  runApp(
    UncontrolledProviderScope(
      container: container,
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

Future<ProviderContainer> initializeState() async {
  final container = ProviderContainer();
  container.read(processTemplateListProvider).addAll(
      await PersistantLocalStorage.readProcessList(
          FileStorageObjectType.processlist));

  container.read(inProgressProcessListProvider).addAll(
      await PersistantLocalStorage.readProcessInstanceList(
          FileStorageObjectType.inprogresslist));

  container.read(completedProcessListProvider).addAll(
      await PersistantLocalStorage.readProcessInstanceList(
          FileStorageObjectType.completedlist));

  return container;
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
        bottom: TabBar(controller: _tabController, tabs: sProcessTabs),
        title: const Text("MyProcess"),
      ),
      body: TabBarView(controller: _tabController, children: [
        ProcessTemplateListWidget(controller: _tabController),
        InProgressProcessListWidget(tabController: _tabController),
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
