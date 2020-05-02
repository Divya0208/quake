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

  void vibrate()async{
    print(await Vibration.hasAmplitudeControl());
    if (await Vibration.hasVibrator()) {
      final wave = await loadWaveformData("assets/waveforms/HighWayToHell.json");
      List <double> dataPoints = wave.scaledData();
      print(wave.channels);
      List <double> random = [0.2,0.1,0.3,0.5,0.1,0.2,0.1];

      /*for(int i=0;i<random.length;i++){
        print(random[i]);
        await Future.delayed(Duration(seconds: 1));
        if(random[i]>=0.2){
          Vibration.vibrate(duration:10000);
        }else{
          Vibration.cancel();
        }
      }*/
      int countV = 0;
      int countP = 0;
      List <int> songPattern = [];
      for(int i=0; i< dataPoints.length; i=i+2){
        if (dataPoints[i].abs() > 0.02){
          if(countP > 0){
            songPattern.add((countP*1000/172).round());
            countP=0;
          }
          countV++;
        }
        else{
          if(countV > 0){
            songPattern.add((countV*1000/172).round());
            countV=0;
          }
          countV++;
        }
      }

      //print(dataPoints.length);
      //print(songPattern);
      Vibration.vibrate(pattern: songPattern);
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:double.infinity,
      color:primary_pink,
      child: Center(
        child: FlatButton(
          color: primary_black,
          onPressed: (){
            vibrate();
          },
          child:Text('VIBRATE',style: TextStyle(letterSpacing: 2),)
        ),
      ),
    );
  }
}