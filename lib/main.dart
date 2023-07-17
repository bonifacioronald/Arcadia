import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/providers/deafult_provider.dart';
import 'package:arcadia_app/screens/end_session_screen.dart';
import 'package:arcadia_app/screens/facial_recognition_screen.dart';
import 'package:arcadia_app/screens/home_screen.dart';
import 'package:arcadia_app/screens/market_screen.dart';
import 'package:arcadia_app/screens/shelter_screen.dart';
import 'package:arcadia_app/screens/study_room_screens.dart';
import 'package:arcadia_app/screens/village_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/colors.dart' as custom_colors;
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          //DEFAULT
          value: DefaultProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Arcadia',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(hintColor: custom_colors.primary, fontFamily: 'Poppins'),
        home: EndSessionScreen(),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ShelterScreen.routeName: (context) => ShelterScreen(),
          MarketScreen.routeName: (context) => MarketScreen(),
          VillageScreen.routeName: (context) => VillageScreen(),
          StudyRoomScreens.routeName: (context) => StudyRoomScreens(),
          FacialRecognitionScreens.routeName: (context) =>
              FacialRecognitionScreens(),
          EndSessionScreen.routeName: (context) => EndSessionScreen()
        },
      ),
    );
  }
}
