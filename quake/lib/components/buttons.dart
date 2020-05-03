import 'package:flutter/material.dart';
import 'package:quake/components/constants.dart';


class PlayButton extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.white,
      child: Icon(
        Icons.play_arrow,
        color: primary_pink,
        size: 40.0,
      ),
      onPressed: null,
    );
  }
}

class PauseButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.white,
      child: Icon(
        Icons.pause,
        color: primary_pink,
        size: 40.0,
      ),
      onPressed: null,
    );
  }
}

class SkipPrevious extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(
        Icons.skip_previous,
        color: Colors.white,
        size: 40.0,
      ),
      onPressed: null,
    );
  }
}

class SkipNext extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(
        Icons.skip_next,
        color: Colors.white,
        size: 40.0,
      ),
      onPressed: null,
    );
  }
}

class VolumeUp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(
        Icons.volume_up,
        color: Colors.white,
        size: 25.0,
      ),
      onPressed: null,
    );
  }
}

class VolumeDown extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(
        Icons.volume_down,
        color: Colors.white,
        size: 25.0,
      ),
      onPressed: null,
    );
  }
}