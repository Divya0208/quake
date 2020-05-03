import 'package:flutter/material.dart';
import 'package:quake/components/constants.dart';
import 'package:quake/components/buttons.dart';
import 'package:quake/components/music_slider.dart';

class Player extends StatefulWidget {
  static const String id = 'player';
  
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {

  String songPath = "./HighwayToHell.mp3";
  String songTitle = "";
  String artistName = "";

  _PlayerState();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          Expanded(
            child: Container(
              color: primary_pink,
            ),
          ),
          Expanded(
            child: Container(
              color: primary_black,
            ),
          )
        ]),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250.0,
              height: 250.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-10.0, 10.0),
                        color: Color(0x33000000),
                        blurRadius: 10.0,
                        spreadRadius: 10.0)
                  ],
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/quake_logo.png"))),
            ),
            SizedBox(height: 20.0),
            Text(
              'SONG NAME',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Source Sans Pro',
                decoration: TextDecoration.none
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Singer Name',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 40.0),
            Text(
              'Current Time',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 60.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[SkipPrevious(), PlayButton(), SkipNext()]),
            SizedBox(height: 60.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[VolumeDown(), MusicSlider(), VolumeUp()]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(onPressed: null)
            ],)
          ],
        ))
      ]),
    );
  }
}
