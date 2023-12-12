import 'package:flutter/material.dart';
import 'package:lifelink/capsule_head_widget.dart';
import 'package:lifelink/get_app_bar.dart';
import 'package:lifelink/standard_feed_widget.dart';

class StandardFeedPage extends StatelessWidget {
  const StandardFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CapsuleHeadWidget(
              avatarImage: '1.jpg',
              name: 'FOOTBALL AND MORE',
              description: 'The feed of sport events',
            ),
            StandardFeedWidget(),
          ],
        ), // End of body
      ),
    );
  }
}
