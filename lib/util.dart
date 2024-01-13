import 'dart:io';

import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';
import 'package:path_provider/path_provider.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TimeUtil {
  static String formatTime(int seconds) {
    final d = Duration(seconds: seconds);
    return d.toString().split('.').first.padLeft(8, "0");
  }

  static String formatDateTime(DateTime dateTime) {
    final DateFormat formatter = DateFormat('h:mm:ss a, MMMM d yyyy');
    return formatter.format(dateTime);
  }
}

class StringUtil {
  static String format(SessionInstance instance) {
    final DateFormat formatter = DateFormat('h:mm:ss a, MMMM d yyyy');
    final duration =
        instance.end?.difference(instance.start ?? DateTime.now()).inSeconds;

    var result = "\n\n${instance.session.name}\n\n";
    result += "Start: ${formatter.format(instance.start!)}\n";
    result += "End: ${formatter.format(instance.end!)}\n";
    result += "Duration: ${duration ?? 0} seconds\n\n";

    if (instance.taskInstances.isNotEmpty) {
      result += "Todo\n";
      for (final taskInstance in instance.taskInstances) {
        result += " " * 4;
        if (taskInstance.photoVerificationPath != null) {
          final file =
              taskInstance.photoVerificationPath?.split('/').toList().last;
          result +=
              "- ${taskInstance.task.title} (completed: ${taskInstance.completed}, file: $file)";
        } else {
          result +=
              "- ${taskInstance.task.title} (completed: ${taskInstance.completed})";
        }
        result += "\n";
      }
    }

    if (instance.counterInstances.isNotEmpty) {
      result += "\n";
      result += "Counters\n";
      for (final counterInstance in instance.counterInstances) {
        result += " " * 4;
        result +=
            "- ${counterInstance.counterTask.title} (count: ${counterInstance.count})";
        result += "\n";
      }
    }

    return result;
  }
}

class PdfUtil {
  static Future<File> createPdfForInstance(SessionInstance instance) async {
    final pdf = pw.Document();
    final sessionName = instance.session.name;
    final DateFormat formatter = DateFormat('MMMM_d_yyyy_h_mm_ss_as');
    final endTime = formatter.format(instance.end!);
    var pdfFile = "${sessionName}_$endTime";

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.letter,
        build: (pw.Context context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Header(
                  child: pw.Text("Session: ${instance.session.name}",
                      style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
              if (instance.taskInstances.isNotEmpty) ...[
                pw.Header(
                    child: pw.Text("Todo",
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)))
              ],
              ...instance.taskInstances.map((t) {
                return pw.Align(
                    alignment: pw.Alignment.topRight,
                    child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(t.title,
                              style:
                                  pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                          if (t.photoVerificationPath != null) ...[
                            pw.Text(
                              "completed: ${t.completed}, photo: ${t.photoVerificationPath!.split('/').last}",
                            )
                          ],
                          if (t.photoVerificationPath == null) ...[
                            pw.Text("completed: ${t.completed}"),
                          ],
                        ]));
              }),
              if (instance.counterInstances.isNotEmpty) ...[
                pw.Header(
                    child: pw.Text("Counter",
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)))
              ],
              ...instance.counterInstances.map((c) {
                return pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(c.title,
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text("counter: ${c.count}")
                    ]);
              })
            ],
          ); // Center
        }));

    for (var t in instance.taskInstances) {
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

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/$pdfFile.pdf");
    await file.writeAsBytes(await pdf.save());

    return file;
  }
}
