import 'package:arcadia_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/colors.dart' as custom_colors;

class Navigation extends StatefulWidget {
  static const routeName = '/navigation';
  @override
  State<Navigation> createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  static GlobalKey<NavigationState> globalKey =
      new GlobalKey<NavigationState>();
  BottomNavigationBar get navigationBar {
    return NavigationState.globalKey.currentWidget as BottomNavigationBar;
  }

  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double NavBarIconSize = 32;
    return Scaffold(
      backgroundColor: custom_colors.backgroundPrimary,
      floatingActionButton: Container(
        height: 64,
        width: 64,
        child: FloatingActionButton(
          backgroundColor: custom_colors.secondary,
          onPressed: () => navigationBar.onTap!(2),
          child: Icon(
            Icons.local_library_outlined,
            size: NavBarIconSize,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          boxShadow: [
            BoxShadow(
              color: custom_colors.secondary.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28), topRight: Radius.circular(28)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: custom_colors.backgroundPrimary,
            unselectedItemColor: custom_colors.secondary.withOpacity(0.5),
            key: globalKey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (int newIndex) {
              setState(() {
                currentIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home_rounded,
                    size: NavBarIconSize,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.handshake_rounded,
                    size: NavBarIconSize,
                  )),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.group_outlined,
                  size: 0,
                ),
              ),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.forum_rounded,
                    size: NavBarIconSize,
                  )),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.bar_chart_rounded,
                  size: NavBarIconSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
