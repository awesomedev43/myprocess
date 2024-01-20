import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/task_util.dart';
import 'package:myprocess/tasks/todo_template_form_task_list_widget.dart';
import 'package:myprocess/widgets/util.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

extension CompletenessExtensions on List<TaskInstance> {
  bool completed() {
    return every((element) => element.completed);
  }
}

extension PdfExtension on List<TaskInstance> {
  Future<void> addTaskStatusPdfPages(
      pw.Document pdf, String sessionName) async {
    if (isEmpty) {
      return;
    }

    final emoji = await PdfGoogleFonts.notoColorEmoji();

    final pdfWidgets = [
      pw.Header(
          child: pw.Text("Todo",
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
      ...map((t) {
        return pw.Align(
            alignment: pw.Alignment.topRight,
            child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(t.title,
                      style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  if (t.photoVerificationPath != null) ...[
                    pw.Text(
                        "photo: ${t.photoVerificationPath!.split('/').last}, ${t.completed ? "✅" : "❌"}",
                        style: pw.TextStyle(
                          fontFallback: [emoji],
                        ))
                  ],
                  if (t.photoVerificationPath == null) ...[
                    pw.Text(t.completed ? "✅" : "❌",
                        style: pw.TextStyle(
                          fontFallback: [emoji],
                        )),
                  ],
                ]));
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

  void addVerificationPhotoPages(pw.Document pdf) {
    for (var t in this) {
      if (t.photoVerificationPath == null) {
        continue;
      }
      final image = pw.MemoryImage(
        File(t.photoVerificationPath!).readAsBytesSync(),
      );
      pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.letter,
        build: (context) {
          return pw.Column(children: [
            pw.Header(
                child: pw.Text(
                    "Task: ${t.task.title} (${t.photoVerificationPath!.split('/').last})")),
            pw.Container(
                alignment: pw.Alignment.topRight,
                width: 300,
                child: pw.Image(image)),
          ]);
        },
      ));
    }
  }
}

extension InstanceWidgetExtensions on List<TaskInstance> {
  Future<bool> showDialogIfIncomplete(BuildContext context) async {
    if (completed()) {
      return true;
    }
    return TaskUtil.showDialogIfIncomplete(
        context, "Not all tasks are completed");
  }

  List<Widget> completedScreenWidgets() {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Tasks"),
      const Padding(padding: EdgeInsets.all(1)),
      ...map(
        (instance) {
          final finishedIcon =
              instance.completed ? Icons.check_circle : Icons.cancel;
          final finishedColor = instance.completed ? Colors.green : Colors.red;
          return Card(
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(finishedIcon, color: finishedColor),
                      const Padding(padding: EdgeInsets.all(10.0)),
                      Text(instance.title),
                    ],
                  ),
                  if (instance.photoVerificationPath != null) ...[
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.black, // Set border color
                                width: 1.0)),
                        child: SizedBox(
                            width: 200.0,
                            child: Image.file(
                                File(instance.photoVerificationPath!))),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          );
        },
      ),
    ];
  }
}

extension WidgetExtensions on List<Task> {
  List<ListTile> getInfoTiles() {
    return map((e) {
      return ListTile(
        dense: true,
        title: Text(e.title),
        leading: const Icon(Icons.check_box_outline_blank),
      );
    }).toList();
  }

  List<Widget> getTemplateFormWidget(
      {required Function editTask, required Function deleteTask}) {
    if (isEmpty) {
      return [];
    }

    return [
      WidgetUtils.buildSectionTitle("Tasks"),
      const Padding(padding: EdgeInsets.only(bottom: 10.0)),
      TodoTemplateFormTaskListWidget(
        tasks: this,
        deleteTask: deleteTask,
        editTask: editTask,
      )
    ];
  }
}
