import 'package:flutter/material.dart';
import 'package:quake/components/constants.dart';


class PlayButton extends StatelessWidget {

  Function onPress;

  PlayButton({@required this.onPress});
 
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

  Function onPress;

  PauseButton({@required this.onPress});

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


class ResetButton extends StatelessWidget {

  Function onPress;

  ResetButton({@required this.onPress});
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.white,
      child: Icon(
        Icons.stop,
        color: primary_pink,
        size: 40.0,
      ),
      onPressed: null,
    );
  }
}
