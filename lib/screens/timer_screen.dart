// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:arcadia_app/widget/timer.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }


// class _MyWidgetState extends State<MyWidget> {
//   @override
//   int time = 120;
//   int second=time*60;
// Timer? timer;
// void startTimer(time) {
//   timer = Timer.periodic(Duration(seconds: 1), (timer) {
//     if (time > 0) {
//       setState(() {
//         (time*60)--;
//       });
//     } else {
//       timer.cancel();
//     }
//   });
// }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: Column(
//       children: [],
//     )));
//   }
// }
