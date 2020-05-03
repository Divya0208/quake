import 'package:vibration/vibration.dart';
import 'package:quake/helpers/waveform_data_loader.dart';
import 'package:quake/components/constants.dart';

class QuakeBrain{

  bool _shouldPlay(double dataPoint){
    return dataPoint.abs()>=threshold;
  }

  void vibrate({int startFrom})async{
    int startingDataPoint = (startFrom/durationOfDatapoint).round();
    if (await Vibration.hasVibrator()) {
      final wave = await loadWaveformData("assets/waveforms/HighWayToHell.json");
      List <double> dataPoints = wave.scaledData();
  
      List <int> songPattern = [];
      List <int> intensityPattern = [];

      int countPlaying = 0;
      int countDelaying = 0;
      
      
        for(int i=startingDataPoint;i<dataPoints.length;i+=2){
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
      
      Vibration.vibrate(pattern: songPattern);
    }
  }

  void stopVibration(){
    Vibration.cancel();
  }

}