import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';

class statsButton extends StatelessWidget {
  String title;
  String stat;
  String desc;
  statsButton(this.title, this.stat, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 115,
        height: 145,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
              alignment: Alignment.center,
              child: Text(title,
                  style: TextStyle(
                      color: backgroundPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w900))),
          SizedBox(height: 20),
          Text(
            stat,
            style: TextStyle(
              color: primaryBlue,
              fontSize: 28,
            ),
          ),
          Text(
            desc,
            style: TextStyle(
              color: primaryBlue,
              fontSize: 16,
            ),
          )
        ]));
  }
}
