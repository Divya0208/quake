import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF101010),
      child: Center(
        child: Image(image: AssetImage('assets/quake_logo.png')),
      ),
    );
  }
}