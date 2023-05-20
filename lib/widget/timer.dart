import 'dart:async';

import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  @override
  static const maxTime = 120;
  int time = maxTime;
  Timer? timer;

  void startTimer(time) {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (time > 0) {
        setState(() {
          time--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
