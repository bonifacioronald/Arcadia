import 'package:arcadia_app/widget/live_room_card.dart';
import 'package:arcadia_app/widget/session_card.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/colors.dart' as custom_colors;
import '../widget/app_drawer_custom.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
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

  User userDefaultData = User("Serene W.", 230, 23);

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
        totalContributor: 4,
        color: custom_colors.secondary,
        timeElapsed: 132,
        totalMember: 4),
    SessionCard(
        title: 'Eden Village',
        imageUrl: 'lib/assets/images/village2.jpeg',
        totalContributor: 5,
        color: custom_colors.secondary,
        timeElapsed: 52,
        totalMember: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppDrawerCustom(),
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
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.menu_rounded,
                            size: 36,
                            color: custom_colors.backgroundPrimary,
                          ),
                          onTap: () => _key.currentState!.openDrawer(),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.notifications_active_outlined,
                            size: 32,
                            color: Colors.white,
                          ),
                          onTap: () => ScaffoldMessenger.of(context)
                              .showSnackBar(_prototypeSnackBar),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                      height: 20,
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
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        // Expanded(child: SizedBox()),
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
                                  TextStyle(fontSize: 15, color: Colors.white),
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
                        'Your Villages',
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
                                totalContributor:
                                    sessionCardList[index].totalContributor,
                                color: sessionCardList[index].color,
                                timeElapsed: sessionCardList[index].timeElapsed,
                                totalMember: sessionCardList[index].totalMember,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              index == sessionCardList.length - 1
                                  ? GestureDetector(
                                      onTap: () => ScaffoldMessenger.of(context)
                                          .showSnackBar(_prototypeSnackBar),
                                      child: Container(
                                          width: 280,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: custom_colors.primary
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                style: BorderStyle.solid,
                                                width: 2,
                                                color: custom_colors.primary),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .add_circle_outline_rounded,
                                                size: 40,
                                                color: custom_colors.primary,
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Create a new village',
                                                style: TextStyle(
                                                    color:
                                                        custom_colors.primary,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )),
                                    )
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
