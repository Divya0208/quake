import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_util.dart';
import 'package:flutter_lyric/lyric_widget.dart';
import 'package:quake/components/constants.dart';


class MyHomePage extends StatefulWidget {
  static const id = "Lyrics";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  var songLyc = playList[0].lyrics;
  Timer _countdownTimer;
  int _countdownNum = 3000000;
  Duration start =new Duration(seconds: 0);
  @override
  void initState() {
    if (_countdownTimer != null) {
      return;
    }
    _countdownTimer = new Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        _countdownNum--;
        start = start+new Duration(seconds: 10);
        if(_countdownNum==0){
          _countdownTimer.cancel();
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lyrics = LyricUtil.formatLyric(songLyc);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: LyricWidget(
          size: Size(300,300),
          lyrics: lyrics,
          vsync: this,
          currentProgress: start.inMilliseconds.toDouble(),
        )
      ),
    );
  }
}