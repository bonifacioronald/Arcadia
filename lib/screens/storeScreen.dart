import 'package:arcadia_app/models/colors.dart';
import 'package:flutter/material.dart';
import '../widget/storeItems.dart';

class storeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundPrimary,
        body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50, left: 22, right: 22),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Store",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("2600",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      category(catName: "Avatar"),
                      SizedBox(width: 36),
                      category(catName: "Items"),
                      SizedBox(width: 36),
                      category(catName: "Pets")
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      items(itemName: "halo", coins: 10),
                      SizedBox(width: 27),
                      items(itemName: "halo again", coins: 15)
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    children: [
                      items(itemName: "halo", coins: 10),
                      SizedBox(width: 27),
                      items(itemName: "halo again", coins: 15)
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    children: [
                      items(itemName: "halo", coins: 10),
                      SizedBox(width: 27),
                      items(itemName: "halo again", coins: 15)
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}

class category extends StatelessWidget {
  String catName;

  category({required this.catName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 90,
      decoration: BoxDecoration(
          color: primaryBlue, borderRadius: BorderRadius.circular(8)),
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
