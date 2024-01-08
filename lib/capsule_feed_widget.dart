import 'package:flutter/material.dart';
import 'package:lifelink/feed_capsule_widget.dart';

class CapsuleFeedWidget extends StatelessWidget {
  const CapsuleFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: MediaQuery.of(context).size.height / 1.1,
        child: ListView(
          children: const [
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
            FeedCapsuleWidget(),
          ],
        ));
  }
}
