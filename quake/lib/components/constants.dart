import 'package:flutter/material.dart';

const int datapointsPerSecond = 172;
const Color primary_pink = Color(0xFFFE5B7A);
const Color primary_black = Color(0xFF101010);
const double threshold = 0.06;
final int durationOfDatapoint = (1000 / datapointsPerSecond).round(); 

class Song{
  String songName, artistName, songPath, songBeatsPath, youtubeURL;
  Song({this.songName, this.songPath, this.artistName, this.songBeatsPath, this.youtubeURL});
}

List<Song> playList = [
  Song(
    songName: 'Highway to Hell',
    artistName: 'AC/DC',
    songPath: 'assets/sounds/HighwayToHell.mp3',
    songBeatsPath: 'assets/waveforms/HighwayToHell.json',
    youtubeURL : 'https://www.youtube.com/watch?v=l482T0yNkeo'
  ),
  Song(
    songName: 'Highway to Hell',
    artistName: 'AC/DC',
    songPath: 'assets/sounds/HighwayToHell.mp3',
    songBeatsPath: 'assets/waveforms/HighwayToHell.json'
  ),
  Song(
    songName: 'Highway to Hell',
    artistName: 'AC/DC',
    songPath: 'assets/sounds/HighwayToHell.mp3',
    songBeatsPath: 'assets/waveforms/HighwayToHell.json'
  ),
];