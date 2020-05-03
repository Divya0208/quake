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



      initialRoute: Player.id,

=======
      initialRoute: Player.id,
>>>>>>> 8c19583577e0b7e60d190d17453837013f28f687
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

