import 'package:flutter/material.dart';
import 'components/constants.dart';
import 'views/landing_page.dart';
import 'views/dashboard.dart';
import 'views/player.dart';
import 'views/test.dart';
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
<<<<<<< HEAD
      initialRoute:Dashboard.id,
=======
      initialRoute: TestPage.id,
>>>>>>> bb26040228503f9ae1dc2d0a71d01d77c022ec96
      routes: {
        TestPage.id: (context)=>TestPage(),
        LandingPage.id : (context) => LandingPage(),
        Dashboard.id : (context) => Dashboard(),
        Player.id : (context) => Player()
      },
    );
  }
}

