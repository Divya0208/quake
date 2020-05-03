import 'dart:convert';
import 'dart:math';

class WaveformData {
  int version;
  // number of channels (only mono files are currently supported)
  int channels;
  // original sample rate
  int sampleRate;
  // indicates how many original samples have been analyzed per frame. 256 samples -> frame of min/max
  int sampleSize;
  // bit depth of the data
  int bits;
  // the number of frames contained in the data
  int length;
  // data is in frames with min and max values for each sampled data point.
  List<int> data;
  List<double> _scaledData;

  WaveformData({
    this.version,
    this.channels,
    this.sampleRate,
    this.sampleSize,
    this.bits,
    this.length,
    this.data,
  });
  
  List<double> scaledData() {
    if (!_isDataScaled()) {
      _scaleData();
    }
    return _scaledData;
  }

  factory WaveformData.fromJson(String str) => WaveformData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WaveformData.fromMap(Map<String, dynamic> json) => new WaveformData(
        version: json["version"] == null ? null : json["version"],
        channels: json["channels"] == null ? null : json["channels"],
        sampleRate: json["sample_rate"] == null ? null : json["sample_rate"],
        sampleSize: json["samples_per_pixel"] == null ? null : json["samples_per_pixel"],
        bits: json["bits"] == null ? null : json["bits"],
        length: json["length"] == null ? null : json["length"],
        data: json["data"] == null ? null : new List<int>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "version": version == null ? null : version,
        "channels": channels == null ? null : channels,
        "sample_rate": sampleRate == null ? null : sampleRate,
        "samples_per_pixel": sampleSize == null ? null : sampleSize,
        "bits": bits == null ? null : bits,
        "length": length == null ? null : length,
        "data": data == null ? null : new List<dynamic>.from(data.map((x) => x)),
  };

  bool _isDataScaled() {
    return _scaledData != null && _scaledData.length == data.length;
  }

  // scale the data from int values to float
  _scaleData() {
    final max = pow(2, bits - 1).toDouble();

    final dataSize = data.length;
    _scaledData = List<double>(dataSize);
    for (var i = 0; i < dataSize; i++) {
      _scaledData[i] = data[i].toDouble() / max;
      if (_scaledData[i] > 1.0) {
        _scaledData[i] = 1.0;
      }
      if (_scaledData[i] < -1.0) {
        _scaledData[i] = -1.0;
      }
    }
  }
}
