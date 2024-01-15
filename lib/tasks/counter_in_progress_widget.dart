import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/model/providers.dart';

class CounterInProgressWidget extends ConsumerStatefulWidget {
  const CounterInProgressWidget({super.key, required this.sessionInstance});

  final SessionInstance sessionInstance;

  @override
  ConsumerState<CounterInProgressWidget> createState() =>
      _InProgressCounterWidgetState();
}

class _InProgressCounterWidgetState
    extends ConsumerState<CounterInProgressWidget> {
  void onTextFieldUpdate(String value, String id) {
    ref
        .read(sessionInstanceListNotifierProvider.notifier)
        .updateCounterTask(widget.sessionInstance.id, id, int.parse(value));
  }

  @override
  Widget build(BuildContext context) {
    final counterTaskInstances = ref
            .watch(
                getInProgressCounterTaskListProvider(widget.sessionInstance.id))
            .value ??
        [];

    final rows = counterTaskInstances.map(
      (t) {
        final inputController = TextEditingController();
        inputController.text = t.count.toString();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(t.title, style: const TextStyle(fontSize: 16)),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      inputController.text =
                          (int.parse(inputController.text) - t.increment)
                              .toString();
                      onTextFieldUpdate(inputController.text, t.id);
                    },
                    icon: const Icon(Icons.remove)),
                SizedBox(
                  width: 40.0,
                  child: TextField(
                    onEditingComplete: () =>
                        onTextFieldUpdate(inputController.text, t.id),
                    textAlign: TextAlign.center,
                    controller: inputController,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      inputController.text =
                          (int.parse(inputController.text) + t.increment)
                              .toString();
                      onTextFieldUpdate(inputController.text, t.id);
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        );
      },
    );
    return Column(children: rows.toList());
  }
}
