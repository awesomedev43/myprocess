import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/screens/completed_process_info_screen.dart';
import 'package:myprocess/screens/process_template_form_screen.dart';
import 'package:myprocess/tabs/process_template_list_tab.dart';

import 'tabs/completed_process_list_tab.dart';
import 'tabs/in_progress_process_list_tab.dart';
import 'model/providers.dart';
import 'tabs/tabs.dart';

void main() async {
  // Only initialize state at the start
  WidgetsFlutterBinding.ensureInitialized();
  final container = await initializeState();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        title: 'Process Your Life',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainApp(),
          '/addprocess': (context) => const ProcessTemplateFormScreen(),
          '/completedprocessinfo': (context) => CompletedProcessInfoScreen(),
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

  container.read(processInstanceListProvider).addAll(
      await PersistantLocalStorage.readProcessInstanceList(
          FileStorageObjectType.processinstancelist));

  // container.read(completedProcessListProvider).addAll(
  //     await PersistantLocalStorage.readProcessInstanceList(
  //         FileStorageObjectType.completedlist));

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
        title: const Text("Process Your Life"),
      ),
      body: TabBarView(controller: _tabController, children: [
        ProcessTemplateListTab(controller: _tabController),
        InProgressProcessListTab(tabController: _tabController),
        const CompletedProcessListTab(),
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
