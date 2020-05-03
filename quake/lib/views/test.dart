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

    {
      bool intensitySupport = await Vibration.hasAmplitudeControl();
      print("Does your smartphone support varying vibration intensity?: ${intensitySupport?'Yes':'No'}");
    
    }
    
    if (await Vibration.hasVibrator()) {
      final wave = await loadWaveformData("assets/waveforms/HighWayToHell.json");
      List <double> dataPoints = wave.scaledData();
  
      List <int> songPattern = [];
      List <int> intensityPattern = [];
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
            intensityPattern.add((dataPoints[i].abs()*255).round());
            i+=2;
            if(i>=dataPoints.length){
              break;
            }
          }
          songPattern.add(countPlaying);
        }
      
      //print(dataPoints.length);
      int sum = songPattern.reduce((value, element) => value + element);
      int min = (sum/(60*1000)).round();
      int sec = ((sum/1000).round() % 60);
      print('Song Length: $min min $sec s');
      Vibration.vibrate(pattern: songPattern,intensities: intensityPattern);
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