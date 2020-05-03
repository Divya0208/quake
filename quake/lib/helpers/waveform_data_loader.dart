import 'package:flutter/services.dart';
import 'package:quake/models/waveform_data_model.dart';

Future<WaveformData> loadWaveformData(String filepath) async {
  final data = await rootBundle.loadString(filepath);
  return WaveformData.fromJson(data);
}