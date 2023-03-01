import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(
                    text: 'Process Properties ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ),
            const Divider(),
            Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: 500,
                    child: TextField(
                      maxLength: 40,
                      decoration: const InputDecoration(hintText: "Name"),
                      controller: nameController,
                    ))),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      text: 'Process Tasks ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    )
                  ])),
            ]),
            const Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: "New Process",
        child: const Icon(Icons.save_rounded),
      ),
    );
  }
}
