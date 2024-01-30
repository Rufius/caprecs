import 'package:flutter/material.dart';
import 'package:lifelink/custom_video_widget.dart';
import 'package:lifelink/icons_row_widget.dart';

class VideoWidget extends StatelessWidget {
  // Constructor to accept parameters, if any
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
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
            width: MediaQuery.of(context).size.width,
            child: CustomVideoPlayer(videoUrl: 'assets/bee.mp4'),
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
    );
  }
}
