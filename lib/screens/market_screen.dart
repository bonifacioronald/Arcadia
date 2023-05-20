import 'package:arcadia_app/models/colors.dart';

import 'package:flutter/material.dart';
import '../widget/market_item.dart';

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primary,
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Market",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "2600",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'lib/assets/images/coins.png',
                      scale: 16,
                    )
                  ],
                )), // stop

            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0XFFEFEFEF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            category(
                              catName: "Avatar",
                              chosenColor: Color(0xFFBEBCDC),
                            ),
                            SizedBox(width: 36),
                            category(
                                catName: "Items",
                                chosenColor: Color(0xFFBEBCDC)),
                            SizedBox(width: 36),
                            category(
                                catName: "Pets", chosenColor: Color(0xFF8E93FB))
                          ],
                        ),
                        Row(children: [
                          items(
                            itemName: "Corg de Corgi",
                            coins: 15,
                            image: 'lib/assets/images/dog.png',
                          ),
                          Spacer(),
                          items(
                            itemName: "Capybara",
                            coins: 15,
                            image: 'lib/assets/images/capy.png',
                          ),
                        ]),
                        Row(
                          children: [
                            items(
                                itemName: "Lemon Tree",
                                coins: 10,
                                image: 'lib/assets/images/pohon.png'),
                            Spacer(),
                            items(
                              itemName: "Starcat",
                              coins: 10,
                              image: "lib/assets/images/kucing.png",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            items(
                                itemName: "KFC Chicken",
                                coins: 15,
                                image: 'lib/assets/images/ayam.png'),
                            Spacer(),
                            items(
                              itemName: "Starcat",
                              coins: 10,
                              image: "lib/assets/images/kucing.png",
                            ),
                          ],
                        )
                      ])),
            ),

            // Expanded(
            //   child: SingleChildScrollView(
            // child: Container(
            //   width: double.infinity,
            //   color: Colors.amber,
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            // items(
            //   itemName: "Corg de Corgi",
            //   coins: 15,
            //   image: 'lib/assets/images/dog.png',
            // ),
            //     SizedBox(width: 27),
            //     items(
            //       itemName: "Capybara",
            //       coins: 15,
            //       image: 'lib/assets/images/capy.png',
            //     ),
            //   ],
            // ),
            //           SizedBox(height: 23),
            //           Row(
            //             children: [
            // items(
            //   itemName: "Lemon Tree",
            //   coins: 10,
            //   image: 'lib/assets/images/pohon.png',
            //               ),
            //               SizedBox(width: 27),
            //               items(
            //                 itemName: "Shiba Inu",
            //                 coins: 15,
            //                 image: 'lib/assets/images/inu.png',
            //               ),
            //             ],
            //           ),
            //           SizedBox(height: 23),
            //           Row(
            //             children: [
            //               items(
            // itemName: "Starcat",
            // coins: 10,
            // image: "lib/assets/images/kucing.png",
            //               ),
            //               SizedBox(width: 27),
            //               items(
            // itemName: "KFC Chicken",
            // coins: 15,
            // image: 'lib/assets/images/ayam.png',
            //               ),
            //             ],
            //           ),
            //           SizedBox(height: 50),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
