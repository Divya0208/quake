import 'package:flutter/material.dart';
import 'package:quake/components/constants.dart';
import 'package:quake/views/dashboard.dart';

class UnsupportedPage extends StatelessWidget {
  static const id = "unsupported";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary_black,
        body:Center(
          child: Hero(
              tag:'container',
              child: Container(
              height:300,
              decoration: BoxDecoration(
                color:primary_pink,
                borderRadius: BorderRadius.circular(30)
              ),
              width: 320,
              padding: EdgeInsets.symmetric(horizontal:20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Your device doesn't seem to support varying vibration intensity.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'You can still use the app but will not be to have the full experience.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, Dashboard.id);
                    },
                    child:Container(
                      padding: EdgeInsets.symmetric(vertical:10,horizontal:20),
                      child:Text(
                        'CONTINUE',
                        style:TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w300
                        )
                      ),
                      decoration: BoxDecoration(
                        color:primary_black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}