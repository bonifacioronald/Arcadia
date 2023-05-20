import 'package:arcadia_app/widget/live_room_card.dart';
import 'package:arcadia_app/widget/session_card.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/colors.dart' as custom_colors;

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";

  User userDefaultData = User("Dylan Eu", 230, 23);

  List<LiveRoomCard> liveRoomCardList = [
    LiveRoomCard(
        title: 'Lo-Fi',
        color: custom_colors.primary,
        timeElapsed: 132,
        totalMember: 89,
        icon: Icons.trending_up_rounded),
    LiveRoomCard(
      title: 'Calm',
      color: custom_colors.primary.withOpacity(0.6),
      timeElapsed: 192,
      totalMember: 79,
      icon: Icons.favorite,
    ),
    LiveRoomCard(
      title: 'Chill',
      color: custom_colors.backgroundPrimary,
      timeElapsed: 72,
      totalMember: 29,
      icon: Icons.access_time_rounded,
    ),
  ];

  List<SessionCard> sessionCardList = [
    SessionCard(
        title: 'Utopia Village',
        imageUrl: 'lib/assets/images/village1.jpeg',
        color: custom_colors.secondary,
        timeElapsed: 132,
        totalMember: 4),
    SessionCard(
        title: 'Eden Village',
        imageUrl: 'lib/assets/images/village2.jpeg',
        color: custom_colors.secondary,
        timeElapsed: 52,
        totalMember: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    custom_colors.primary.withOpacity(0.7),
                    custom_colors.primary,
                  ],
                )),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top + 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: custom_colors.secondary,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu_rounded,
                            size: 36,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Hello,',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      userDefaultData.name,
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userDefaultData.totalFocusTime.toString()} h',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Total Focused Time',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${userDefaultData.totalSession.toString()}',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Successful Sessions',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              Container(
                height: 540,
                color: custom_colors.primary,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Live Rooms',
                            style: TextStyle(
                                fontSize: 20,
                                color: custom_colors.backgroundPrimary,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 180,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          itemCount: liveRoomCardList.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              LiveRoomCard(
                                title: liveRoomCardList[index].title,
                                color: liveRoomCardList[index].color,
                                timeElapsed:
                                    liveRoomCardList[index].timeElapsed,
                                totalMember:
                                    liveRoomCardList[index].totalMember,
                                icon: liveRoomCardList[index].icon,
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Your Sessions',
                        style: TextStyle(
                            fontSize: 20,
                            color: custom_colors.backgroundPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 180,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          itemCount: sessionCardList.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              SessionCard(
                                title: sessionCardList[index].title,
                                imageUrl: sessionCardList[index].imageUrl,
                                color: sessionCardList[index].color,
                                timeElapsed: sessionCardList[index].timeElapsed,
                                totalMember: sessionCardList[index].totalMember,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              index == sessionCardList.length - 1
                                  ? Container(
                                      width: 280,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: custom_colors.primary
                                            .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            style: BorderStyle.solid,
                                            width: 2,
                                            color: custom_colors.primary),
                                      ),
                                      child: Icon(
                                        Icons.add_circle_outline_rounded,
                                        size: 40,
                                        color: custom_colors.primary,
                                      ))
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
