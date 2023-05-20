import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

class StudyRoomScreen extends StatelessWidget {
  const StudyRoomScreen({super.key});

  Widget VideoRow() {
    return Row(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundPrimary,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: double.infinity,
                    height: 110,
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
                  SizedBox(height: 20),
                  Container(
                      height: 222,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black)),
                  SizedBox(height: 10),
                  VideoRow()
                ],
              ),
            ),
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
                                shape: BoxShape.circle, color: Colors.white),
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
          ]),
        ));
  }
}
