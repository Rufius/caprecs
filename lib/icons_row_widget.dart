import 'package:flutter/material.dart';

class SocialMediaIconsRow extends StatelessWidget {
  const SocialMediaIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.favorite,
              size: 25.0, color: Colors.black), // Example icon for Facebook
          Icon(Icons.comment,
              size: 25.0, color: Colors.black), // Example icon for Instagram
          Icon(Icons.share,
              size: 25.0, color: Colors.black), // Example icon for Twitter
          // ... Add more icons as needed
        ],
      ),
    );
  }
}
