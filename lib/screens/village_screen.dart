import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/widget/house_screen_personal_stat_button.dart';
import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;
import '../widget/app_drawer_custom.dart';

class VillageScreen extends StatelessWidget {
  static const routeName = '/village';
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    String title = 'Eden Village';
    //String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      key: _key,
      drawer: AppDrawerCustom(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundPrimary,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).padding.top,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            child: Icon(
                              Icons.menu_rounded,
                              size: 36,
                              color: custom_colors.backgroundPrimary,
                            ),
                            onTap: () => _key.currentState!.openDrawer(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: custom_colors.primary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: backgroundPrimary,
                    child: InteractiveViewer(
                      constrained: false,
                      maxScale: 5,
                      minScale: 3,
                      panEnabled: true,
                      boundaryMargin: EdgeInsets.all(0),
                      child: Image.asset(
                        'lib/assets/images/village3.png',
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 220,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    boxShadow: [
                      BoxShadow(
                        color: custom_colors.primary.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, -2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Group Summary",
                        style: TextStyle(
                            fontSize: 20,
                            color: backgroundPrimary,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          houseScreenPersonalStatButton('Time\nSpent', '40m',
                              primary, Colors.white, primary),
                          houseScreenPersonalStatButton('Productivity\nRate',
                              '87%', primary, Colors.white, primary),
                          houseScreenPersonalStatButton('Village\nGrowth', '4%',
                              primary, Colors.white, primary),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
