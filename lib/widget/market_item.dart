import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';
import '../models/colors.dart';

class items extends StatelessWidget {
  String itemName;
  int coins;
  String image;

  items({required this.itemName, required this.coins, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      height: 180,
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 130,
            child: Image.asset(image),
          ),
          SizedBox(
            height: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemName,
                style:
                    TextStyle(color: primaryBlue, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(coins.toString()),
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
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          color: chosenColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            catName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
