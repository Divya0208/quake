import 'package:flutter/material.dart';
import 'package:quake/views/dashboard.dart';
import 'package:quake/views/unsupported_page.dart';
import 'package:vibration/vibration.dart';

class LandingPage extends StatelessWidget {

  static const String id = 'landing_page';

  void _haveAmplitudeControl(BuildContext context)async{
    bool ampControl = await Vibration.hasAmplitudeControl();
    Future.delayed(Duration(milliseconds:1500),(){
      if(!ampControl){
        Navigator.pushNamed(context, UnsupportedPage.id);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) { 
    return FlatButton(
      child: Container(
        color: Color(0xFF101010),
        child: Center(
          child: Image(image: AssetImage('assets/images/quake_logo.png')),
        ),
      ),
      onPressed: (){
        Navigator.pushNamed(context, Dashboard.id);
      },
    );
  }
}