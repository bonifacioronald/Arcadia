import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class LiveRoomCard extends StatelessWidget {
  String title;
  Color color;
  int timeElapsed;
  int totalMember;
  IconData icon;

  LiveRoomCard(
      {required this.title,
      required this.color,
      required this.timeElapsed,
      required this.totalMember,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 140,
      decoration: BoxDecoration(
        color: color,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '${timeElapsed.toString()}h elapsed',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Spacer(),
          Row(
            children: [
              Icon(
                Icons.people_alt_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                totalMember.toString(),
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
