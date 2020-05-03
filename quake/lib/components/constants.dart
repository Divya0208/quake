import 'package:flutter/material.dart';

const int datapointsPerSecond = 172;
const Color primary_pink = Color(0xFFFE5B7A);
const Color primary_black = Color(0xFF101010);
const double threshold = 0.06;
final int durationOfDatapoint = (1000 / datapointsPerSecond).round(); 

class Lyric{
  int start,end;
  String title;
  Lyric({this.start,this.title,this.end});
}

class Song{
  String songName, artistName, songPath, songBeatsPath, youtubeURL;
  List<Lyric>lyrics;
  Song({this.songName, this.songPath, this.artistName, this.songBeatsPath, this.youtubeURL,this.lyrics});
}


List<Song> playList = [
  Song(
    songName: 'Highway to Hell',
    artistName: 'AC/DC',
    songPath: 'assets/sounds/HighwayToHell.mp3',
    songBeatsPath: 'assets/waveforms/HighwayToHell.json',
    youtubeURL : 'https://www.youtube.com/watch?v=l482T0yNkeo',
    lyrics: [
      Lyric(
        start: 60200,
        end: 63500,
        title: "Living easy‚ living free" 
      ),
      Lyric(
        start: 63720,
        end: 67410,
        title: "Season ticket on a one way ride" 
      ),
      Lyric(
        start: 67610,
        end: 71410,
        title: "Asking nothing‚ leave me be" 
      ),
      Lyric(
        start: 71620,
        end: 75210,
        title: "Taking everything in my stride" 
      ),
      Lyric(
        start: 75420,
        end: 79020,
        title: "Don′t need reason‚ don′t need rhyme" 
      ),
      Lyric(
        start: 79220,
        end: 82820,
        title: "Ain′t nothing I would rather do" 
      ),
    ]
    
    )
];