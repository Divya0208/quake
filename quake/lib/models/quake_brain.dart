import 'package:quake/models/waveform_data_model.dart';
import 'package:vibration/vibration.dart';
import 'package:quake/helpers/waveform_data_loader.dart';
import 'package:quake/components/constants.dart';

class QuakeBrain{
  WaveformData _wave;
  List <int> _songPattern = [];
  List <int> _intensityPattern = [];
  static const _songLength = 212874;
  QuakeBrain(){
    _initialize();
  }

  int getSongLength(){
    return _songLength;
  }

  void _initialize()async{
    _wave = await loadWaveformData("assets/waveforms/HighWayToHell.json");
  }

  bool _shouldPlay(double dataPoint){
    return dataPoint.abs()>=threshold;
  }

  void vibrate({int startFrom})async{
    int startingDataPoint = (startFrom/durationOfDatapoint).round();
    _songPattern.clear();
    _intensityPattern.clear();
    if (await Vibration.hasVibrator()) {
      
      List <double> dataPoints = _wave.scaledData();
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
          _songPattern.add(countDelaying);
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
          _songPattern.add(countPlaying);
          _intensityPattern.add((dataPoints[i-1].abs()*255).round());
        }
      Vibration.vibrate(pattern: _songPattern);
    }
  }

  void stopVibration(){
    Vibration.cancel();
  }

  
}