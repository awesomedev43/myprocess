import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/screens/completed_session_info_screen.dart';
import 'package:myprocess/screens/session_template_form_screen.dart';
import 'package:myprocess/tabs/session_template_list_tab.dart';

import 'tabs/completed_session_list_tab.dart';
import 'tabs/in_progress_session_list_tab.dart';
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
        title: 'Sessions',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainApp(),
          '/addsession': (context) => const SessionTemplateFormScreen(),
          '/completedsessioninfo': (context) => CompletedSessionInfoScreen(),
        },
      ),
    ),
  );
}

Future<ProviderContainer> initializeState() async {
  final container = ProviderContainer();
  container.read(sessionTemplateListProvider).addAll(
      await PersistantLocalStorage.readsessionList(
          FileStorageObjectType.sessionlist));

  container.read(sessionInstanceListProvider).addAll(
      await PersistantLocalStorage.readsessionInstanceList(
          FileStorageObjectType.sessioninstancelist));

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
        bottom: TabBar(controller: _tabController, tabs: sSessionTabs),
        title: const Text("Sessions"),
      ),
      body: TabBarView(controller: _tabController, children: [
        SessionTemplateListTab(controller: _tabController),
        InProgressSessionListTab(tabController: _tabController),
        const CompletedSessionListTab(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addsession');
        },
        tooltip: "Add New Session Template",
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SessionTemplateList extends StatefulHookConsumerWidget {
  const SessionTemplateList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SessionTemplateListState();
}

class _SessionTemplateListState extends ConsumerState<SessionTemplateList> {
  @override
  Widget build(BuildContext context) {
    final templateList = ref.watch(sessionTemplateListProvider);
    final cards = templateList
        .map((session) => Card(
              child: ListTile(
                leading: const Icon(Icons.card_travel),
                title: Text(session.name),
              ),
            ))
        .toList();

    return ListView(
      children: cards,
    );
  }
}
