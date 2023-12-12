import 'package:flutter/material.dart';
import 'package:lifelink/capsule_body_widget.dart';
import 'package:lifelink/get_app_bar.dart';
import 'package:lifelink/profile_feed_widget.dart';
import 'package:lifelink/profile_head_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileHeadWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ProfileFeedWidget(),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: CapsuleBodyWidget(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ), // End of body
      ),
    );
  }
}
