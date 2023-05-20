import 'package:arcadia_app/models/colors.dart' as custom_colors;
import 'package:arcadia_app/widget/app_drawer_custom.dart';
import 'package:flutter/material.dart';
import '../widget/market_item.dart';

class MarketScreen extends StatelessWidget {
  static const routeName = '/market';
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppDrawerCustom(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: custom_colors.primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.menu_rounded,
                        size: 36,
                        color: Colors.white,
                      ),
                      onTap: () => _key.currentState!.openDrawer(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Market",
                      style: TextStyle(
                          fontSize: 24,
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
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0XFFEFEFEF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
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
                            catName: "Items", chosenColor: Color(0xFFBEBCDC)),
                        SizedBox(width: 36),
                        category(
                            catName: "Pets", chosenColor: Color(0xFF8E93FB))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            items(
                              itemName: "Corg de Corgi",
                              coins: 20,
                              image: 'lib/assets/images/dog.png',
                            ),
                            items(
                              itemName: "Capybara",
                              coins: 15,
                              image: 'lib/assets/images/capy.png',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            items(
                                itemName: "KFC Chicken",
                                coins: 15,
                                image: 'lib/assets/images/ayam.png'),
                            Spacer(),
                            items(
                              itemName: "Cash",
                              coins: 8,
                              image: "lib/assets/images/inu.png",
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
