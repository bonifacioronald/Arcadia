import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';
import '../models/colors.dart';

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

class items extends StatelessWidget {
  String itemName;
  int coins;
  String image;

  items({required this.itemName, required this.coins, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          ScaffoldMessenger.of(context).showSnackBar(_prototypeSnackBar),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemName,
                  style: TextStyle(color: primary, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(coins.toString()),
                    SizedBox(
                      width: 6,
                    ),
                    Image.asset(
                      'lib/assets/images/coins.png',
                      scale: 25,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class category extends StatelessWidget {
  String catName;
  Color chosenColor;

  category({
    required this.catName,
    required this.chosenColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          ScaffoldMessenger.of(context).showSnackBar(_prototypeSnackBar),
      child: Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            color: chosenColor, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              catName,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
