import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'package:quake/helpers/waveform_data_loader.dart';
import 'package:quake/components/constants.dart';

class TestPage extends StatefulWidget {
  static const id = "test";
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  

  @override
  void initState () {
    super.initState();
  }

  bool _shouldPlay(double dataPoint){
    return dataPoint.abs()>=threshold;
  }
  

  void vibrate()async{
    print(await Vibration.hasAmplitudeControl());
    if (await Vibration.hasVibrator()) {
<<<<<<< HEAD
      Vibration.vibrate(pattern:[125,75,125,275,200,275,125,75,125,275,200,600,200,600]);
=======
      final wave = await loadWaveformData("assets/waveforms/HighWayToHell.json");
      List <double> dataPoints = wave.scaledData();
      print(wave.channels);
      
      List <int> songPattern = [];
      //for(int i=0; i< dataPoints.length; i=i+2){
      //  if (dataPoints[i].abs() > 0.02){
      //    if(countP > 0){
      //      songPattern.add((countP*1000/172).round());
      //      countP=0;
      //    }
      //    countV++;
      //  }
      //  else{
      //    if(countV > 0){
      //      songPattern.add((countV*1000/172).round());
      //      countV=0;
      //    }
      //    countV++;
      //  }
      //}
      int countPlaying = 0;
      int countDelaying = 0;
      int i=0;
      
        for(i=0;i<dataPoints.length;i+=2){
          countDelaying = 0;
          while(!_shouldPlay(dataPoints[i])){
            countDelaying+=durationOfDatapoint;
            i+=2;
            if(i>=dataPoints.length){
              break;
            }
          }
          songPattern.add(countDelaying);
          if(i>=dataPoints.length){
            break;
          }
          countPlaying=0;
          while(_shouldPlay(dataPoints[i])){ 
            countPlaying+=durationOfDatapoint;
            i+=2;
            if(i>=dataPoints.length){
              break;
            }
          }
          songPattern.add(countPlaying);
        }
      
      //print(dataPoints.length);
      var sum = songPattern.reduce((value, element) => value + element);
      print(songPattern);
      print('Sum: $sum');
      Vibration.vibrate(pattern: songPattern);
>>>>>>> bb26040228503f9ae1dc2d0a71d01d77c022ec96
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:double.infinity,
      color:primary_pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            color: primary_black,
            onPressed: (){
              vibrate();
            },
            child:Text('VIBRATE',style: TextStyle(letterSpacing: 2),)
          ),
          FlatButton(
            color: primary_black,
            onPressed: (){
              Vibration.cancel();
            },
            child:Text('STOP',style: TextStyle(letterSpacing: 2),)
            
          )
        ],
      ),
    );
  }
}