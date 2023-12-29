//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:lifelink/icons_row_widget.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget({super.key});

  @override
  AudioWidgetState createState() => AudioWidgetState();
}

class AudioWidgetState extends State<AudioWidget> {
  //final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int songLength = 0;

  @override
  void initState() {
    super.initState();

    setAudio();

    /*audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((newPostion) {
      setState(() {
        position = newPostion;
      });
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
            child: Row(children: [
              CircleAvatar(
                radius: 20, // Replace with your image URL
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Rufat Abdurahmanov",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          SizedBox(
            width: 500,
            child: Column(
              children: [
                Image.asset(
                  'assets/music.png',
                ),
                const Text(
                  "The Song #1",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Rihanna",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Slider(
                  min: 0,
                  max: songLength.toDouble(),
                  value: position.inSeconds.toDouble(),
                  onChanged: (value) async {
                    final position = Duration(seconds: value.toInt());
                    //await audioPlayer.seek(position);
                    //await audioPlayer.resume();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(formatTime(position)),
                      Text(formatTime(duration - position)),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  child: IconButton(
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                    iconSize: 50,
                    onPressed: () async {
                      if (isPlaying) {
                        //await audioPlayer.pause();
                      } else {
                        //await audioPlayer.resume();
                      }
                    },
                  ),
                ),
                SocialMediaIconsRow(
                  onFavoriteTap: () {},
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.black,
                  height: 3.0, // Make the line take full horizontal width
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String formatTime(Duration duration) {
    String mins = twoDigits(duration.inMinutes);
    String secs = twoDigits(duration.inSeconds.remainder(60));
    return '$mins : $secs';
  }

  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  Future setAudio() async {
    String url =
        "https://file-examples.com/storage/feaade38c1651bd01984236/2017/11/file_example_MP3_700KB.mp3";
    //audioPlayer.setUrl(url);
    songLength = 42;
    duration = Duration(seconds: songLength);
  }
}
