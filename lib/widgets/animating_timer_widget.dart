import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myprocess/util.dart';

class AnimatingTimerWidget extends StatefulHookWidget {
  const AnimatingTimerWidget({
    super.key,
    required this.start,
  });

  final DateTime? start;

  @override
  State<AnimatingTimerWidget> createState() => _AnimatingTimerWidgetState();
}

class _AnimatingTimerWidgetState extends State<AnimatingTimerWidget> {
  late Timer timer;
  late int timeElapsed;

  @override
  void initState() {
    super.initState();
    setState(() {
      timeElapsed = getTimeElapsed();
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeElapsed = getTimeElapsed();
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  int getTimeElapsed() {
    return DateTime.now().difference(widget.start ?? DateTime.now()).inSeconds;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(left: 10)),
        const Icon(Icons.timer_outlined),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Text(TimeUtil.formatTime(timeElapsed)),
      ],
    );
  }
}
