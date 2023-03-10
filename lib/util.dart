class TimeUtil {
  static String formatTime(int seconds) {
    final d = Duration(seconds: seconds);
    return d.toString().split('.').first.padLeft(8, "0");
  }
}
