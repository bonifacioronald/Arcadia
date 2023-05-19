import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

class endSession extends StatefulWidget {
  const endSession({super.key});

  @override
  State<endSession> createState() => _endSessionState();
}

class _endSessionState extends State<endSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: backgroundPrimary,
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 60,
                top: MediaQuery.of(context).padding.top + 20),
            width: double.infinity,
            child: Column(
              children: [
                Text("My Main Group",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
                Text("2:00 hr - Focus Session 2",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white))
              ],
            )));
  }
}
