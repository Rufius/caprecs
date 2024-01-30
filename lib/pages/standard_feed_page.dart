import 'package:flutter/material.dart';
import 'package:lifelink/app_bar_widget.dart';
import 'package:lifelink/capsule_head_widget.dart';
import 'package:lifelink/standard_feed_widget.dart';

class StandardFeedPage extends StatelessWidget {
  const StandardFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(height: 102),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CapsuleHeadWidget(
              avatarImage: 'assets/1.jpg',
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
