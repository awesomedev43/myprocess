import 'package:intl/intl.dart';
import 'package:myprocess/model/model.dart';

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
