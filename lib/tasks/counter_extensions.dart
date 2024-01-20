import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/counter_template_form_task_list_widget.dart';
import 'package:myprocess/tasks/task_util.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

extension CompletenessExtensions on List<CounterTaskInstance> {
  bool completed() {
    return isEmpty;
  }
}

extension PdfExtension on List<CounterTaskInstance> {
  Future<void> addTaskStatusPdfPages(
      pw.Document pdf, String sessionName) async {
    if (isEmpty) {
      return;
    }
    final pdfWidgets = [
      pw.Header(
          child: pw.Text("Counter",
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
      ...map((c) {
        return pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(c.title,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text("counter: ${c.count}")
            ]);
      })
    ];

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.letter,
        build: (pw.Context context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Header(
                  child: pw.Text("Session: $sessionName",
                      style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
              ...pdfWidgets,
            ],
          ); // Center
        }));
  }
}

extension InstanceWidgetExtensions on List<CounterTaskInstance> {
  Future<bool> showDialogIfIncomplete(BuildContext context) async {
    if (completed()) {
      return true;
    }
    return TaskUtil.showDialogIfIncomplete(
        context, "Are all counter values correctly updated?");
  }

  List<Widget> completedScreenWidgets() {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Counters"),
      ...map(
        (instance) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.plus_one),
              title: Text(
                instance.title,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              trailing: Text("${instance.count}",
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.normal)),
            ),
          );
        },
      )
    ];
  }
}

extension WidgetExtensions on List<CounterTask> {
  List<ListTile> getInfoTiles() {
    return map((e) {
      return ListTile(
          dense: true,
          title: Text("${e.title} (Increment: ${e.increment})"),
          leading: const Icon(Icons.plus_one));
    }).toList();
  }

  List<Widget> getTemplateFormWidget(
      {required Function editTask, required Function deleteTask}) {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Counters"),
      const Padding(padding: EdgeInsets.only(bottom: 10.0)),
      CounterTemplateFormTaskListWidget(
        tasks: this,
        deleteTask: deleteTask,
        editTask: editTask,
      )
    ];
  }
}
