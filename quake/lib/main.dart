import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'views/landing_page.dart';
import 'views/dashboard.dart';
import 'views/player.dart';
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
      initialRoute: LandingPage.id,
>>>>>>> 914e5f3e8c03e666c8f54171c04af57e87bb9e8e

      routes: {
        UnsupportedPage.id: (context)=>UnsupportedPage(),
        LandingPage.id : (context) => LandingPage(),
        Dashboard.id : (context) => Dashboard(),
        Player.id : (context) => Player(songNumber: 0)
      },
    );
  }
}

