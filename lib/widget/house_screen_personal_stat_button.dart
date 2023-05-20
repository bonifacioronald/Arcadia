import 'package:arcadia_app/models/colors.dart' as custom_colors;
import 'package:flutter/material.dart';

class houseScreenPersonalStatButton extends StatelessWidget {
  String description;
  String stat;
  Color circlecolor;
  Color statcolor;
  Color textcolor;
  houseScreenPersonalStatButton(this.description, this.stat, this.circlecolor,
      this.statcolor, this.textcolor);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: circlecolor,
            ),
            child: Center(
              child: Text(
                stat,
                style: TextStyle(
                    color: statcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textcolor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
