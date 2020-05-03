import 'package:flutter/material.dart';

class MusicSlider extends StatefulWidget {
  @override
  _MusicSliderState createState() => _MusicSliderState();
}

class _MusicSliderState extends State<MusicSlider> {
  var height = 150.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0x00000000),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          thumbColor: Colors.white,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
        ),
        child: Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 500.0,
            onChanged: (double newHeight) {
              setState(() {
                height = newHeight;
              });
            }),
      ),
    );
  }
}
