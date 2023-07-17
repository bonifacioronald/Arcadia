import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

import '../widget/app_drawer_custom.dart';

class EndSessionScreen extends StatefulWidget {
  static const routeName = '/end-session';

  @override
  State<EndSessionScreen> createState() => _EndSessionScreenState();
}

Widget leaderboardBar(
    double inputHeight, String text, String percentage, String initial) {
  return Column(
    children: [
      SizedBox(
        height: (273 - inputHeight),
      ),
      Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              initial,
              style: TextStyle(fontSize: 20, color: backgroundPrimary),
            ),
          )),
      SizedBox(height: 20),
      Container(
        height: inputHeight,
        width: 115,
        decoration: BoxDecoration(color: primary, border: Border.all(width: 3)),
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
        ),
      )
    ],
  );
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
              color: backgroundPrimary,
              fontSize: 16,
            )),
        Spacer(),
        Text('$percentage%',
            style: TextStyle(
                color: primary, fontSize: 16, fontWeight: FontWeight.w700)),
      ],
    ),
  );
}

final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

class _EndSessionScreenState extends State<EndSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppDrawerCustom(),
      body: Container(
        color: backgroundPrimary,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.menu_rounded,
                        size: 36,
                        color: Colors.white,
                      ),
                      onTap: () => _key.currentState!.openDrawer(),
                    ),
                  ],
                ),
              )),
              Expanded(
                  flex: 4,
                  child: Container(
                    child: Column(
                      children: [
                        Text('My Village ',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        Text('2:00 hr - Focus Session 2',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                  )),
              Expanded(child: Container())
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leaderboardBar(207, '2nd', '30', 'RL'),
              leaderboardBar(273, '1st', '87', 'SW'),
              leaderboardBar(159, '3rd', '20', 'DE'),
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
              child: SingleChildScrollView(
                clipBehavior: Clip.none,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Focus Score',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: backgroundPrimary)),
                    SizedBox(height: 20),
                    nameBar('1. Serene W.', '87'),
                    SizedBox(height: 20),
                    nameBar('2. Rex Lim', '30'),
                    SizedBox(height: 20),
                    nameBar('3. Dylan Eu', '20')
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
