import 'package:flutter/material.dart';
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
      theme: ThemeData(

        primarySwatch: Colors.blue,
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

