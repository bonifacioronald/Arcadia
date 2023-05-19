import 'package:arcadia_app/models/colors.dart';
import 'package:arcadia_app/providers/deafult_provider.dart';
import 'package:arcadia_app/screens/endsession_screen.dart';
import 'package:arcadia_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        theme: ThemeData(fontFamily: 'Roboto', hintColor: backgroundPrimary),
        home: endSession(),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          Navigation.routeName: (context) => Navigation(),
        },
      ),
    );
  }
}
