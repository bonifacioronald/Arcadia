import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

class endSession extends StatefulWidget {
  const endSession({super.key});

  @override
  State<endSession> createState() => _endSessionState();
}

Widget leaderboardBar(double inputHeight, String text) {
  return Column(children: [
    SizedBox(height: (273 - inputHeight)),
    Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white)),
    SizedBox(height: 20),
    Container(
        height: inputHeight,
        width: 115,
        decoration:
            BoxDecoration(color: primaryBlue, border: Border.all(width: 3)),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700))
          ],
        ))
  ]);
} //leaderboardBar

Widget nameBar(String name) {
  return Container(
    width: 370,
    height: 56,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0XFFF8F8F8)),
    child: Row(
      children: [
        Text('1. ',
            style: TextStyle(
                color: primaryBlue, fontSize: 16, fontWeight: FontWeight.w700)),
        Text(name,
            style: TextStyle(
                color: primaryBlue, fontSize: 16, fontWeight: FontWeight.w700))
      ],
    ),
  );
}

class _endSessionState extends State<endSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: backgroundPrimary,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              Text("My Main Group",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
              SizedBox(height: 10),
              Text("2:00 hr - Focus Session 2",
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leaderboardBar(207, '2nd'),
                  leaderboardBar(273, '1st'),
                  leaderboardBar(159, '3rd'),
                ],
              ),
              Expanded(
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          nameBar('Rex Lim'),
                          SizedBox(height: 20),
                          nameBar('Siu'),
                          SizedBox(height: 20),
                          nameBar('Charlie')
                        ],
                      )))
            ])));
  }
}
