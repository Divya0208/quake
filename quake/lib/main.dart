import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'views/landing_page.dart';
import 'views/dashboard.dart';
import 'views/player.dart';
import 'views/test.dart';
import 'views/unsupported_page.dart';
import 'package:vibration/vibration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quake',
      theme: ThemeData.dark().copyWith(
        accentColor: primary_pink,
      ),
<<<<<<< HEAD
      initialRoute: UnsupportedPage.id,
=======
      initialRoute: Player.id,
>>>>>>> 2b66c747ea5a61c1439532afa80a2a9ffcfc4ab0
      routes: {
        UnsupportedPage.id: (context)=>UnsupportedPage(),
        TestPage.id: (context)=>TestPage(),
        LandingPage.id : (context) => LandingPage(),
        Dashboard.id : (context) => Dashboard(),
        Player.id : (context) => Player()
      },
    );
  }
}

