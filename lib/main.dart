import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/screens/completed_session_info_screen.dart';
import 'package:myprocess/screens/session_stats_screen.dart';
import 'package:myprocess/screens/session_task_input_form.dart';
import 'package:myprocess/screens/session_template_form_screen.dart';
import 'package:myprocess/screens/task_verification_photo_screen.dart';
import 'package:myprocess/tabs/session_template_list_tab.dart';
import 'package:myprocess/widgets/settings_popup_widget.dart';

import 'tabs/completed_session_list_tab.dart';
import 'tabs/in_progress_session_list_tab.dart';
import 'model/providers.dart';
import 'tabs/tabs.dart';

void main() async {
  // Only initialize state at the start
  WidgetsFlutterBinding.ensureInitialized();
  final container = await initializeState();
  CameraDescription? firstCamera;

  if (Platform.isAndroid) {
    final cameras = await availableCameras();
    firstCamera = cameras.first;
  }

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sessions',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainApp(),
          '/addsession': (context) => const SessionTemplateFormScreen(),
          '/addtask': (context) => const SessionTaskInputForm(),
          '/completedsessioninfo': (context) => CompletedSessionInfoScreen(),
          '/sessionstats': (context) => const SessionStatsScreen(),
          '/taskverificationphoto': (context) =>
              TaskVerificationPhotoScreen(camera: firstCamera),
        },
      ),
    ),
  );
}

Future<ProviderContainer> initializeState() async {
  final container = ProviderContainer();
  return container;
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late bool _floatingButtonVisble;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _floatingButtonVisble = true;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(
      () {
        setState(() {
          _floatingButtonVisble =
              (_tabController.index == SessionTab.sessiontemplate.index);
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabController, tabs: sSessionTabs),
        title: const Text("Sessions"),
        actions: const [SettingsPopupWidget()],
      ),
      body: TabBarView(controller: _tabController, children: [
        SessionTemplateListTab(controller: _tabController),
        InProgressSessionListTab(tabController: _tabController),
        const CompletedSessionListTab(),
      ]),
      floatingActionButton: Visibility(
        visible: _floatingButtonVisble,
        child: FloatingActionButton.extended(
          label: const Text("New Template"),
          onPressed: () async {
            final newSession =
                await Navigator.pushNamed(context, '/addsession');
            if (newSession != null) {
              ref
                  .read(sessionTemplateListNotifierProvider.notifier)
                  .add(newSession as Session);
            }
          },
          tooltip: "Add New Session Template",
          isExtended: true,
          icon: const Icon(Icons.add),
        ),
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
    final templateList = ref.watch(sessionTemplateListNotifierProvider).value!;
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
