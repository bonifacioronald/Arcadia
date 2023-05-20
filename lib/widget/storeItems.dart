import 'package:flutter/material.dart';

import '../models/colors.dart';

class items extends StatelessWidget {
  String itemName;
  int coins;

  items({
    required this.itemName,
    required this.coins,
  });

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
            decoration: BoxDecoration(
                color: primaryBlue, borderRadius: BorderRadius.circular(10)),
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
              Text(coins.toString())
            ],
          ),
        ],
      ),
    );
  }
}
