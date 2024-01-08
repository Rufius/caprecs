import 'package:flutter/material.dart';
import 'package:lifelink/icons_row_widget.dart';

class PostWidget extends StatelessWidget {
  // Constructor to accept parameters, if any
  const PostWidget({super.key});

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
            child: Column(
              children: [
                Image.asset(
                  'assets/1.jpg',
                ),
                const SizedBox(height: 20),
                const Text(
                    "The seven candidates on stage all trail Mr Trump by a significant margin in the race for the party's nomination, and knew they had to do something to change the dynamic. During a chaotic two-hour debate, they often tried to do it at once, talking over each other, the moderators, and sometimes themselves. Thank you for talking while I'm interrupting, Vivek Ramaswamy told Tim Scott snidely in what was a telling Freudian slip."),
                SocialMediaIconsRow(onFavoriteTap: () {}),
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
}
