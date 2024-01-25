import 'dart:io';

import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';
import 'package:myprocess/tasks/counter_extensions.dart';
import 'package:myprocess/tasks/todo_extensions.dart';
import 'package:path_provider/path_provider.dart';

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

    result += instance.taskInstances.getStringRepresentation();
    result += instance.counterInstances.getStringRepresentation();

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

    await instance.taskInstances
        .addTaskStatusPdfPages(pdf, instance.session.name);
    await instance.counterInstances
        .addTaskStatusPdfPages(pdf, instance.session.name);
    instance.taskInstances.addVerificationPhotoPages(pdf);

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/$pdfFile.pdf");
    await file.writeAsBytes(await pdf.save());

    return file;
  }
}
