import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final String videoUrl;

  CustomVideoPlayer({required this.videoUrl});

  @override
  _CustomVideoPlayerState createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;
  bool isButtonVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown when initialized
        setState(() {});
      });

    _controller.addListener(() {
      if (_controller.value.position >= _controller.value.duration) {
        // Video has finished playing
        setState(() {
          isButtonVisible = true; // Show the play button when finished
        });
      }
    });
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _controller.seekTo(Duration(seconds: 0)); // Seek to the beginning
        isButtonVisible = true; // Show the play button when paused
      } else {
        _controller.play();
        isButtonVisible = false; // Hide the play button when playing
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(), // Show a loading indicator until the video is initialized
            if (isButtonVisible)
              FloatingActionButton(
                onPressed: _togglePlayPause,
                child: Icon(
                  Icons.play_arrow,
                ),
              ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
