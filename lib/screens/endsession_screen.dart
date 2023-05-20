import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

class endSession extends StatefulWidget {
  const endSession({super.key});

  @override
  State<endSession> createState() => _endSessionState();
}

Widget leaderboardBar(double inputHeight, String text, String percentage) {
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
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 40),
            Text('$percentage %',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))
          ],
        ))
  ]);
} //leaderboardBar

Widget nameBar(String name, String percentage) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 370,
    height: 56,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0XFFF8F8F8)),
    child: Row(
      children: [
        Text(name,
            style: TextStyle(
                color: primaryBlue, fontSize: 16, fontWeight: FontWeight.w700)),
        Spacer(),
        Text('$percentage %',
            style: TextStyle(
                color: primaryBlue, fontSize: 16, fontWeight: FontWeight.w700)),
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
                  leaderboardBar(207, '2nd', '87'),
                  leaderboardBar(273, '1st', '30'),
                  leaderboardBar(159, '3rd', '20'),
                ],
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Focus Score",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: backgroundPrimary)),
                          SizedBox(height: 10),
                          nameBar('1. Rex Lim', '87'),
                          SizedBox(height: 20),
                          nameBar('2. Siu', '30'),
                          SizedBox(height: 20),
                          nameBar('3. Charlie', '20')
                        ],
                      )))
            ])));
  }
}
