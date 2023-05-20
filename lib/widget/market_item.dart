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
