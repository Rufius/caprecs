import 'package:flutter/material.dart';
import 'package:lifelink/profile_feed_capsule_new_widget.dart';

class ProfileFeedWidget extends StatelessWidget {
  const ProfileFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 1.6,
        child: ListView(
          children: const [
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap1.png', text: 'STORIES'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/tile2.png', text: 'CAPSES'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap3.png', text: 'MARATHON'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap4.png', text: 'PLAYLIST'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap5.png', text: 'CHALLENGE'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap6.png', text: 'FOR KIDS'),
            ProfileFeedCapsuleNewWidget(
                image: 'assets/cap7.png', text: 'MY BOOK'),
            ProfileFeedCapsuleNewWidget(image: 'assets/cap8.png', text: 'EDU'),
          ],
        ));
  }
}
