import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class SessionCard extends StatelessWidget {
  String title;
  String imageUrl;
  int totalContributor;
  Color color;
  int timeElapsed;
  int totalMember;

  SessionCard(
      {required this.title,
      required this.imageUrl,
      required this.totalContributor,
      required this.color,
      required this.timeElapsed,
      required this.totalMember});

  void _displaySessionOptions(BuildContext ctx) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      context: ctx,
      builder: (_) {
        return Container(
          height: 240,
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: custom_colors.primary,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 32,
                      color: custom_colors.backgroundPrimary,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Start a new session',
                      style: TextStyle(
                          fontSize: 16, color: custom_colors.backgroundPrimary),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline_rounded,
                      size: 32,
                      color: custom_colors.backgroundPrimary,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Add new contributors',
                      style: TextStyle(
                          fontSize: 16, color: custom_colors.backgroundPrimary),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.roofing_rounded,
                      size: 32,
                      color: custom_colors.backgroundPrimary,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'View village progress',
                      style: TextStyle(
                          fontSize: 16, color: custom_colors.backgroundPrimary),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => _displaySessionOptions(context)),
      child: Container(
        width: 280,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
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
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$totalContributor contributors',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Spacer(),
              Text(
                "${timeElapsed.toString()}h total time",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
