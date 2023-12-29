import 'package:flutter/material.dart';

class SocialMediaIconsRow extends StatelessWidget {
  final Function() onFavoriteTap;
  const SocialMediaIconsRow({super.key, required this.onFavoriteTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.favorite,
              size: 25.0, color: Colors.black), // Example icon for Facebook
          GestureDetector(
            onTap: onFavoriteTap,
            child: const Icon(Icons.comment, size: 25.0, color: Colors.black),
          ), // Example icon for Instagram
          const Icon(Icons.share,
              size: 25.0, color: Colors.black), // Example icon for Twitter
          // ... Add more icons as needed
        ],
      ),
    );
  }
}
