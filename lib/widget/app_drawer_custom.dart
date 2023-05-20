import 'package:arcadia_app/screens/home_screen.dart';
import 'package:arcadia_app/screens/market_screen.dart';
import 'package:arcadia_app/screens/shelter_screen.dart';
import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class AppDrawerCustom extends StatelessWidget {
  final _prototypeSnackBar = SnackBar(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    padding: EdgeInsets.all(20),
    backgroundColor: Color(0xFF6fc276),
    behavior: SnackBarBehavior.floating,
    elevation: 40,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    content: const Text(
      'Hi, ARCADIA is currently still in a very-early development phase, thus this feature is not available yet.',
      style: TextStyle(color: Colors.white, fontSize: 14),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top + 12,
              ),
              Text(
                'ARCADIA',
                style: TextStyle(
                    color: custom_colors.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 28,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          color: custom_colors.primary,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.home_outlined,
                        color: custom_colors.primary,
                      )
                    ],
                  ),
                ),
                onTap: (() =>
                    Navigator.of(context).pushNamed(HomeScreen.routeName)),
              ),
              Divider(
                color: custom_colors.primary,
              ),
              GestureDetector(
                onTap: (() =>
                    Navigator.of(context).pushNamed(MarketScreen.routeName)),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Market',
                        style: TextStyle(
                          color: custom_colors.primary,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.wallet_giftcard,
                        color: custom_colors.primary,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: custom_colors.primary,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(ShelterScreen.routeName),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Shelter',
                        style: TextStyle(
                          color: custom_colors.primary,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.fireplace_rounded,
                        color: custom_colors.primary,
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => ScaffoldMessenger.of(context)
                    .showSnackBar(_prototypeSnackBar),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: custom_colors.primary,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.settings_outlined,
                        color: custom_colors.primary,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () => ScaffoldMessenger.of(context)
                    .showSnackBar(_prototypeSnackBar),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exit',
                        style: TextStyle(
                          color: custom_colors.primary,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.exit_to_app_outlined,
                        color: custom_colors.primary,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
