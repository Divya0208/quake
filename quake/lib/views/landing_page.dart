import 'package:flutter/material.dart';
import 'package:quake/views/dashboard.dart';

class LandingPage extends StatelessWidget {

  static const String id = 'landing_page';

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        color: Color(0xFF101010),
        child: Center(
          child: Image(image: AssetImage('assets/quake_logo.png')),
        ),
      ),
      onPressed: (){
        Navigator.pushNamed(context, Dashboard.id);
      },
    );
  }
}