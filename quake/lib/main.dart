import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'views/landing_page.dart';
import 'views/dashboard.dart';
import 'views/player.dart';
import 'views/test.dart';
import 'views/unsupported_page.dart';

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


      initialRoute: Dashboard.id,

=======
      initialRoute: Player.id,
>>>>>>> bba5d3cdeb3da77c8b9ad33686b51451a55f585d
      routes: {
        UnsupportedPage.id: (context)=>UnsupportedPage(),
        TestPage.id: (context)=>TestPage(),
        LandingPage.id : (context) => LandingPage(),
        Dashboard.id : (context) => Dashboard(),
        Player.id : (context) => Player(songNumber: 0)
      },
    );
  }
}

