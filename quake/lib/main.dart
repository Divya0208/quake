import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'views/landing_page.dart';
import 'views/dashboard.dart';
import 'views/player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quake',
      theme: ThemeData.dark().copyWith(
        accentColor: primary_pink,
      ),
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id : (context) => LandingPage(),
        Dashboard.id : (context) => Dashboard(),
        Player.id : (context) => Player()
      },
    );
  }
}

