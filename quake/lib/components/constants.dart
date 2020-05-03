import 'package:flutter/material.dart';

const int datapointsPerSecond = 172;
const Color primary_pink = Color(0xFFFE5B7A);
const Color primary_black = Color(0xFF101010);
const double threshold = 0.06;
final int durationOfDatapoint = (1000 / datapointsPerSecond).round(); 

class Song{
  String songName, artistName, songPath, songBeatsPath, youtubeURL,lyrics;
  Song({this.songName, this.songPath, this.artistName, this.songBeatsPath, this.youtubeURL,this.lyrics});
}

List<Song> playList = [
  Song(
    songName: 'Highway to Hell',
    artistName: 'AC/DC',
    songPath: 'assets/sounds/HighwayToHell.mp3',
    songBeatsPath: 'assets/waveforms/HighwayToHell.json',
    youtubeURL : 'https://www.youtube.com/watch?v=l482T0yNkeo',
    lyrics: "[by:RentAnAdviser.com]\n[00:00.00]by RentAnAdviser.com\n[00:00.00] \n[01:00.20]Living easy‚ living free\n[01:03.50]\n[01:03.72]Season ticket on a one way ride\n[01:07.41]\n[01:07.61]Asking nothing‚ leave me be\n[01:11.41]\n[01:11.62]Taking everything in my stride\n[01:15.21]\n[01:15.42]Don′t need reason‚ don′t need rhyme\n[01:19.02]\n[01:19.22]Ain′t nothing I would rather do\n[01:22.82]\n[01:23.02]Going down‚ party time\n[01:27.32]\n[01:27.51]My friends are gona be there too\n[01:31.61]\n[01:31.81]I am on the highway to hell\n[01:36.01]\n[01:36.22]Highway to hell\n[01:39.52]\n[01:39.72]I am on the highway to hell\n[01:47.72]\n[01:50.41]No stop signs‚ speed limit\n[01:54.51]\n[01:54.70]Nobody′s gona slow me down\n[01:57.90]\n[01:58.11]Like a whel‚ gona spin it\n[02:01.61]\n[02:01.81]Nobody′s gona mess me around\n[02:05.51]\n[02:05.71]Hey Satan‚ paid my dues\n[02:10.11]\n[02:10.31]Playing in a rocking band\n[02:13.01]\n[02:13.21]Hey mama‚ look at me\n[02:17.00]\n[02:17.21]I am on my way to the promised land‚ whoo!\n[02:22.61]\n[02:22.81]Highway to hell\n[02:26.21]\n[02:26.40]Highway to hell\n[02:30.10]\n[02:30.31]Highway to hell\n[02:33.81]\n[02:34.01]I am on the highway to hell\n[02:40.51]\n[02:40.71]Don′t stop me\n[02:48.71]\n[03:00.52]I am on the highway to hell\n[03:05.22]\n[03:05.42]On the highway to hell\n[03:08.81]\n[03:09.01]I am on the highway to hell\n[03:12.91]\n[03:13.12]Highway to hell\n[03:16.82]\n[03:17.01]Highway to hell\n[03:20.71]\n[03:20.92]Highway to hell\n[03:24.62]\n[03:24.81]Highway to hell\n[03:28.51]\n[03:28.70]Highway to hell\n[03:33.70]\n[03:34.71]www.RentAnAdviser.com\n[03:43.71]\n"
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