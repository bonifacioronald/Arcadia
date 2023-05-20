import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/widget/statsButton.dart';
import 'package:flutter/material.dart';

class houseScreen extends StatefulWidget {
  const houseScreen({super.key});

  @override
  State<houseScreen> createState() => _houseScreenState();
}

class _houseScreenState extends State<houseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          color: backgroundPrimary,
          width: double.infinity,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 640,
                  child: InteractiveViewer(
                    clipBehavior: Clip.hardEdge,
                    constrained: false,
                    maxScale: 3,
                    minScale: 1.3,
                    panEnabled: true, // Set it to false
                    boundaryMargin: EdgeInsets.all(0),
                    child: Image.asset(
                      'lib/assets/images/house.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ])),
      Column(children: [
        Spacer(),
        Container(
            width: double.infinity,
            height: 200,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Color(0XFFF8F8F8),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Today's Summary",
                    style: TextStyle(
                        fontSize: 20,
                        color: backgroundPrimary,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    statsButton('Time Spent', '50', 'mins'),
                    SizedBox(width: 10),
                    statsButton('Focus Time', '38', 'mins'),
                    SizedBox(width: 10),
                    statsButton('Points', '1200', 'gained'),
                  ],
                )
              ],
            ))
      ])
    ]));
  }
}
