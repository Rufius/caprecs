import 'package:flutter/material.dart';
import 'package:lifelink/audio_widget.dart';
import 'package:lifelink/post_widget.dart';
import 'package:lifelink/video_widget.dart';

class StandardFeedWidget extends StatelessWidget {
  const StandardFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 800,
        height: 500,
        child: Center(
            child: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            PostWidget(),
            VideoWidget(),
            AudioWidget(),
          ],
        )));
  }
}
