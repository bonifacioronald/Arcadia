import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/providers/deafult_provider.dart';
import 'package:arcadia_app/widget/Camera_card.dart';
import 'package:arcadia_app/widget/loading_screen.dart';
import 'package:camera/camera.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class StudyRoomScreens extends StatefulWidget {
  const StudyRoomScreens({super.key});

  @override
  State<StudyRoomScreens> createState() => _StudyRoomScreensState();
}

class _StudyRoomScreensState extends State<StudyRoomScreens> {
  Widget VideoRow() {
    return Container(
        color: primary,
        width: double.infinity,
        height: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 4),
                    color: Color(0xFFF1F0F8)),
                width: 182,
                height: 222,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Text('DE'))),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Dylan Eu',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    )
                  ],
                )),
            SizedBox(width: 9),
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 4),
                    color: Color(0xFFF1F0F8)),
                width: 182,
                height: 222,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Text('RL'),
                    )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Rex Lim',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    )
                  ],
                )),
          ],
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundPrimary,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            CameraCard(),
            //first layer camera
            Container(
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).padding.top + 10,
                      color: primary),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    color: primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            shape: BoxShape.circle,
                          ),
                          child: Text('47m\nleft',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          //cicle time left
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Utopia Village",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "2:00 hr - Focus Session 2",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  VideoRow(),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF756FBF)),
                            child: Icon(Icons.camera_alt,
                                color: Colors.white, size: 40))),
                  ),
                ],
              ),
            ), //second stack
          ]),
        ));
  }
}
