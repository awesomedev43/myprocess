import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'MyProcess',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/second': (context) =>
            const MainScreen(), // TODO: Add route for adding new process
      },
    ),
  );
}

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            Text("TODO: Process Tab"),
            Text("TODO: Completed Process")
          ]),
        ));
  }
}
