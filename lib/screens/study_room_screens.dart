import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/widget/Camera_card.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class StudyRoomScreens extends StatefulWidget {
  const StudyRoomScreens({super.key});

  @override
  State<StudyRoomScreens> createState() => _StudyRoomScreensState();
}

class _StudyRoomScreensState extends State<StudyRoomScreens> {
  Widget VideoRow() {
    return Container(
        color: Colors.amber,
        width: double.infinity,
        height: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              width: 182,
              height: 222,
            ),
            SizedBox(width: 9),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              width: 182,
              height: 222,
            )
          ],
        ));
  }

  // late List<CameraDescription> cameras;
  // late CameraController cameraController;

  // int direction = 0;

  // @override
  // void initState() {
  //   startCamera(direction);
  //   super.initState();
  // }

  // void startCamera(int direction) async {
  //   cameras = await availableCameras();

  //   cameraController = CameraController(
  //     cameras[direction],
  //     ResolutionPreset.high,
  //     enableAudio: false,
  //   );

  //   await cameraController.initialize().then((value) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {}); //To refresh widget
  //   }).catchError((e) {
  //     print(e);
  //   });
  // }

  // @override
  // void dispose() {
  //   cameraController.dispose();
  //   super.dispose();
  // }

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
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: double.infinity,
                    height: double.infinity,
                    color: primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            shape: BoxShape.circle,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "47m",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  "left",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ]), //cicle time left
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Main Group",
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
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  height: 76,
                                  width: 76,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Icon(Icons.headphones,
                                      color: Color(0xFF756FBF), size: 40)),
                              SizedBox(height: 10),
                              Container(
                                  height: 76,
                                  width: 76,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF756FBF)),
                                  child: Icon(Icons.holiday_village,
                                      color: Colors.white, size: 40))
                            ])),
                  ),
                ],
              ),
            ), //second stack
          ]),
        ));
  }
}