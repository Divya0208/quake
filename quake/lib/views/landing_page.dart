import 'package:flutter/material.dart';
import 'package:quake/views/dashboard.dart';
import 'package:quake/views/unsupported_page.dart';
import 'package:vibration/vibration.dart';

class LandingPage extends StatelessWidget {

  static const String id = 'landing_page';

  Future<bool> _haveAmplitudeControl(BuildContext context)async{
    bool ampControl = await Vibration.hasAmplitudeControl();
    if(!ampControl){
      Navigator.pushNamed(context, UnsupportedPage.id);
    }
    else{
      Navigator.pushNamed(context, Dashboard.id);
    }
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
        _haveAmplitudeControl(context);
      },
    );
  }
}