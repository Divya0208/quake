import 'package:flutter/material.dart';

class MusicSlider extends StatefulWidget {
  int progress;
  int trackLength;
  MusicSlider({this.progress,this.trackLength});
  @override
  _MusicSliderState createState() => _MusicSliderState();
}

class _MusicSliderState extends State<MusicSlider> {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0x00000000),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
          thumbColor: Colors.white,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
        ),
        child: Slider(
            value: widget.progress.toDouble(),
            min: 0,
            max: widget.trackLength.toDouble(),
            onChanged: (double newHeight) {
              
            }),
      ),
    );
  }
}
