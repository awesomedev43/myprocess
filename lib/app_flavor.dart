import 'package:flutter/services.dart';

class AppFlavor {
  static final AppFlavor _singleton = AppFlavor._internal();
  String? flavor;

  factory AppFlavor() {
    return _singleton;
  }

  AppFlavor._internal();

  Future<void> initialize() async {
    flavor =
        await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
  }

  bool isFreeVersion() {
    if (flavor != null && flavor == "free") {
      return true;
    }
    return false;
  }

  bool isPaidVersion() {
    if (flavor != null && flavor == "paid") {
      return true;
    }
    return false;
  }
}
